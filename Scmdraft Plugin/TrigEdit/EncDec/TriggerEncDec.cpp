#include "../TriggerEditor.h"
#include "TriggerEncDec.h"
#include "../StringUtils/StringCast.h"

// Decode part

int TriggerEditor::BeginDecode() {
	_decode_out.clear();
	return 0;
}

std::string TriggerEditor::EndDecode() {
	return _decode_out.str();
}



void TriggerEditor::DecodeTrigger(const Trig& content) {
	size_t i;

	// If trigger executed by no players, then special-decode that trigger.
	for(i = 0 ; i < 27 ; i++) {
		if(content.effplayer[i]) break;
	}
	if(i == 27) {
		// TODO: Put special handler here.
		return;
	}

	// print comment of trigger
	for(i = 0 ; i < 64 ; i++) {
		if(content.act[i].acttype == 0) break;
		else if(content.act[i].acttype == COMMENT) {
			int strid = content.act[i].strid;
			const char* rawcomment0 = StringTable_GetString(_editordata->EngineData->MapStrings, strid);
			if(rawcomment0 == NULL) break;
			std::string rawcomment = rawcomment0;

			char *comment = (char*)alloca(rawcomment.size() * 5 + 4);
			strcpy(comment, "-- ");
			char *p = comment + 3;

			for(char ch : rawcomment) {
				/**/ if(ch == '\t') *p++ = '\t';
				else if(ch == '\n') {
					*p++ = '\r';
					*p++ = '\n';
					*p++ = '-';
					*p++ = '-';
					*p++ = ' ';
				}

				else if(1 <= ch && ch <= 31) continue;
				else *p++ = ch;
			}

			*p = '\0';
			
			_decode_out << comment << "\r\n";
			break;
		}
	}

	// 1. Write trigger header
	_decode_out << "Trigger {";

	_decode_out << "\r\n";

	// 2. Write player fields
	_decode_out << "\tplayers = {";

	bool firstplayer = true;
	for(int i = 0 ; i < 27 ; i++) {
		if(content.effplayer[i]) {
			if(!firstplayer) _decode_out << ", ";
			else firstplayer = false;
			_decode_out << DecodePlayer(i);
		}
	}
	_decode_out << "},\r\n";

	// 2. Write conditions.
	if(content.cond[0].condtype != 0) { // There is at least one condition.
		_decode_out << "\tconditions = {\r\n";

		for(i = 0 ; i < 16 ; i++) {
			if(content.cond[i].condtype == 0) break;
			DecodeCondition(content.cond[i]);
		}

		_decode_out << "\t},\r\n";
	}


	// 3. Write actions.
	if(content.act[0].acttype != 0) { // There is at least one action.
		_decode_out << "\tactions = {\r\n";

		for(i = 0 ; i < 64 ; i++) {
			if(content.act[i].acttype == 0) break;
			DecodeAction(content.act[i]);
		}
		
		_decode_out << "\t},\r\n";
	}

	// 4. Print auxilarry informations
	std::vector<const char*> auxinfo;
	if(content.flag & 1) auxinfo.push_back("actexec");
	if(content.flag & 4) auxinfo.push_back("preserved");
	if(content.flag & 8) auxinfo.push_back("disabled");

	if(!auxinfo.empty()) {
		_decode_out << "\tflags = {" << auxinfo[0];
		for(i = 1 ; i < auxinfo.size() ; i++) {
			_decode_out << ", " << auxinfo[i];
		}
		_decode_out << "},\r\n";
	}

	// 5. Print starting condition
	if(content.current_action != 0) {
		_decode_out << "\tstarting_action = " << content.current_action << ",\r\n";
	}

	_decode_out << "}\r\n\r\n";
}