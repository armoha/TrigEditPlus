#include "MapNamespace.h"
#include "../TriggerEditor.h"
#include "../StringUtils/StringCast.h"

// Simple bimap structure.
template <typename U, typename V>
class bimap {
public:
	bimap() {}
	~bimap() {}

	void insert(const std::pair<U, V>& data) {
		_l2r.insert(std::make_pair(data.first, data.second));
		_r2l.insert(std::make_pair(data.second, data.first));
	}

	bool l2r(const U& key, V& data) const {
		auto it = _l2r.find(key);
		if(it == _l2r.end()) return false;
		data = it->second;
		return true;
	}

	bool r2l(const V& key, U& data) const {
		auto it = _r2l.find(key);
		if(it == _r2l.end()) return false;
		data = it->second;
		return true;
	}

private:
	std::map<U, V> _l2r;
	std::map<V, U> _r2l;
};




// Some function for UnduplicateString.
inline void AddIndexTrail(std::string &string, int index) {
	char s[20];
	sprintf(s, " (%d)", index);
	string += s;
}


/* UnduplicateString : Convert string list to non-duplicating list of strings.
 *
 * ex) A, AA, AAA -> A, AA, AAA
 * ex) AA, AA, AA -> AA(0), AA(1), AA(2)
 * ex) A, AA, AA  -> A, AA(1), AA(2)
 * ex) A, A(0), A -> A(0), A(0)(1), A(2)
 */

void UnduplicateString(std::string stringlist[], size_t begin, size_t end) {
	struct IndexDupPair {
		IndexDupPair(int index, bool dup) : index(index), dup(dup) {};
		int index; // Index of string
		bool dup;  // Is this string already trailed with string id?
	};

	std::map<std::string, IndexDupPair> stringmap;

	for(size_t i = begin ; i < end ; i++) {
		auto insret = stringmap.insert(std::make_pair(stringlist[i], IndexDupPair(i, false)));
		if(insret.second == false) { // there is duplicate item.
			
			auto dupit = insret.first;

			// Add trail to duplicate items if nessecary.
			if(!dupit->second.dup) {
				int dupindex = dupit->second.index;
				AddIndexTrail(stringlist[dupindex], dupindex);

				stringmap.erase(dupit);
				stringmap.insert(std::make_pair(stringlist[dupindex], IndexDupPair(dupindex, true)));
			}

			// Add trail to this item.
			AddIndexTrail(stringlist[i], i);
			stringmap.insert(std::make_pair(stringlist[i], IndexDupPair(i, true))); // This should succeed.
		}
	}
}




// Simple decoloring
std::string RemoveColorFromString(const std::string& str) {
	const size_t slen = str.size();
	char *newstr = (char*)alloca(slen + 1);
	char *p = newstr;

	for(char ch: str) {
		if(1 <= ch && ch <= 31) continue;
		else *p++ = ch;
	}

	*p = '\0';
	return std::string(newstr);
}


// TriggerNamespace : Unit/Location/Switch name <-> Unit/Location/Switch ID converter.
class MapNamespaceImpl {
public:
	MapNamespaceImpl(const TriggerEditor_Arg& data);
	~MapNamespaceImpl();

	// name -> id
	int GetSwitchID(const std::string& str) const;
	int GetLocationID(const std::string& str) const;
	int GetUnitID(const std::string& str) const;

	// id -> name
	std::string GetSwitchName(int ID) const;
	std::string GetLocationName(int ID) const;
	std::string GetUnitName(int ID) const;

private:
	bimap<int, std::string> _unitmap;
	bimap<int, std::string> _locationmap;
	bimap<int, std::string> _switchmap;
};


MapNamespaceImpl::MapNamespaceImpl(const TriggerEditor_Arg& data) {
	TEngineData* EngineData = data.EngineData;


	// Map unit names
	std::string unitname[233];
	for(int i = 0 ; i < 228 ; i++) {
		int unameindex = EngineData->UnitCustomNames[i];
		const char* uname = NULL;

		if(unameindex) uname = StringTable_GetString(EngineData->MapStrings, unameindex);
		if(uname == NULL) uname = EngineData->UnitNames[i];
		unitname[i].assign(RemoveColorFromString(uname));
	}

	unitname[228] = "None";
	unitname[229] = "Any unit";
	unitname[230] = "Men";
	unitname[231] = "Buildings";
	unitname[232] = "Factories";

	UnduplicateString(unitname, 0, 233);
	for(int i = 0 ; i < 233 ; i++) {
		_unitmap.insert(std::make_pair(i, unitname[i]));
	}


	// Map location names.
	std::string locationname[256];

	for(int i = 0 ; i < 255; i++) {

		const char* lname = NULL;
		char _lname[32];
		
		if(EngineData->MapLocations[i].Exists) {
			int lnameindex = lnameindex = EngineData->MapLocations[i].Data.Name;
			lname = StringTable_GetString(EngineData->MapStrings, lnameindex);
		}

		if(lname == NULL) {
			sprintf(_lname, "Location %d", i+1);
			lname = _lname;
		}

		locationname[i+1] = RemoveColorFromString(lname);
	}

	UnduplicateString(locationname, 1, 256);
	for(int i = 1 ; i < 256 ; i++) {
		_locationmap.insert(std::make_pair(i, locationname[i]));
	}
	

	// Map switch names
	std::string switchname[256];
	DWORD SwitchName[256] = {0};
	// Read switch names
	{
		CChunkData *SWNM = data.SwitchRenaming;
		if(SWNM->ChunkSize == 1024) {
			memcpy(SwitchName, SWNM->ChunkData, 1024);
		}
	}

	for(int i = 0 ; i < 256; i++) {
		int swnameindex = SwitchName[i];
		const char* swname = NULL;
		char _swname[32];

		if(swnameindex) {
			swname = StringTable_GetString(EngineData->MapStrings, swnameindex);
		}

		if(swname == NULL) {
			sprintf(_swname, "Switch %d", i+1);
			swname = _swname;
		}

		switchname[i] = RemoveColorFromString(swname);
	}

	UnduplicateString(switchname, 0, 256);
	for(int i = 0 ; i < 256 ; i++) {
		_switchmap.insert(std::make_pair(i, switchname[i]));
	}
}

MapNamespaceImpl::~MapNamespaceImpl() {}




// name -> id
int MapNamespaceImpl::GetSwitchID(const std::string& str) const {
	int ret;
	bool isconverted = _switchmap.r2l(str, ret);
	if(!isconverted) {
		char errmsg[512];
		sprintf(errmsg, "Cannot parse string \"%.30s\" as switch.", str);
		throw EncodeError(errmsg);
	}
	return ret;
}

int MapNamespaceImpl::GetLocationID(const std::string& str) const {
	int ret;
	bool isconverted = _locationmap.r2l(str, ret);
	if(!isconverted) {
		char errmsg[512];
		sprintf(errmsg, "Cannot parse string \"%.30s\" as location.", str);
		throw EncodeError(errmsg);
	}
	return ret;
}

int MapNamespaceImpl::GetUnitID(const std::string& str) const {
	int ret;
	bool isconverted = _unitmap.r2l(str, ret);
	if(!isconverted) {
		char errmsg[512];
		sprintf(errmsg, "Cannot parse string \"%.30s\" as unit.", str);
		throw EncodeError(errmsg);
	}
	return ret;
}


// id -> name
std::string MapNamespaceImpl::GetSwitchName(int ID) const {
	std::string ret;
	if(!_switchmap.l2r(ID, ret)) return Int2String(ID);
	else {
		return Raw2CString(ret);
	}
}

std::string MapNamespaceImpl::GetLocationName(int ID) const {
	std::string ret;
	if(!_locationmap.l2r(ID, ret)) return Int2String(ID);
	else {
		return Raw2CString(ret);
	}
}

std::string MapNamespaceImpl::GetUnitName(int ID) const {
	std::string ret;
	if(!_unitmap.l2r(ID, ret)) return Int2String(ID);
	else {
		return Raw2CString(ret);
	}
}



// pimpl wrapper
MapNamespace::MapNamespace(const TriggerEditor_Arg& data) : _impl(new MapNamespaceImpl(data)) {}
MapNamespace::~MapNamespace() { delete _impl; }

int MapNamespace::GetSwitchID(const std::string& str) const {
	return _impl->GetSwitchID(str);
}

int MapNamespace::GetLocationID(const std::string& str) const {
	return _impl->GetLocationID(str);
}

int MapNamespace::GetUnitID(const std::string& str) const {
	return _impl->GetUnitID(str);
}


std::string MapNamespace::GetSwitchName(int ID) const {
	return _impl->GetSwitchName(ID);
}

std::string MapNamespace::GetLocationName(int ID) const {
	return _impl->GetLocationName(ID);
}

std::string MapNamespace::GetUnitName(int ID) const {
	return _impl->GetUnitName(ID);
}


// Map Namespace


// Encoder part
int TriggerEditor::EncodeUnit(const std::string& str) const {
	return _namespace->GetUnitID(str);
}

int TriggerEditor::EncodeLocation(const std::string& str) const {
	return _namespace->GetLocationID(str);
}

int TriggerEditor::EncodeSwitchName(const std::string& str) const{
	return _namespace->GetSwitchID(str);
}


// Decoder part
std::string TriggerEditor::DecodeUnit(int value) const {
	return _namespace->GetUnitName(value);
}

std::string TriggerEditor::DecodeLocation(int value) const {
	return _namespace->GetLocationName(value);
}

std::string TriggerEditor::DecodeSwitchName(int value) const {
	return _namespace->GetSwitchName(value);
}
