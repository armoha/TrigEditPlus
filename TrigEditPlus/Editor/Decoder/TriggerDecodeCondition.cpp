/*
 * Copyright (c) 2014 trgk(phu54321@naver.com)
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include "../TriggerEditor.h"
#include "../TriggerEncDec.h"

extern TriggerStatementDecl ConditionFields[23];

void TriggerEditor::DecodeCondition(StringBuffer& buf, const TrigCond& content) const {
	buf << "\t\t";

	if(content.prop & 0x2) {
		buf << "Disabled(";
	}

	if(content.condtype == 0);
	else if(content.condtype > 23) {
		buf << "Condition("
			<< content.locid << ", "
			<< content.player << ", "
			<< content.res << ", "
			<< content.uid << ", "
			<< content.setting << ", "
			<< content.condtype << ", "
			<< content.res_setting << ", "
			<< content.prop
			<< ")\r\n";
	}
	else {
		int condtype = content.condtype;
		TriggerStatementDecl &decl = ConditionFields[condtype - 1];

		buf << decl.stmt_name << "(";
	
		bool firstfield = true;

		for(int i = 0 ; decl.fields[i].Type != 0 ; i++) {
			// Get value
			int value;
			switch(decl.fields[i].Field) {
			case CONDFIELD_LOCID:        value = content.locid; break;
			case CONDFIELD_PLAYER:       value = content.player; break;
			case CONDFIELD_RES:          value = content.res; break;
			case CONDFIELD_UID:          value = content.uid; break;
			case CONDFIELD_SETTING:      value = content.setting; break;
			case CONDFIELD_CONDTYPE:     value = content.condtype; break;
			case CONDFIELD_RES_SETTING:  value = content.res_setting; break;
			case CONDFIELD_PROP:         value = content.prop; break;
			default: throw -1;
			}

			// Decode value according to field type.
			std::string str;
			switch(decl.fields[i].Type) {
			case FIELDTYPE_NUMBER:       str = DecodeNumber(value); break;
			case FIELDTYPE_ALLYSTATUS:   str = DecodeAllyStatus(value); break;
			case FIELDTYPE_COMPARISON:   str = DecodeComparison(value); break;
			case FIELDTYPE_MODIFIER:     str = DecodeModifier(value); break;
			case FIELDTYPE_ORDER:        str = DecodeOrder(value); break;
			case FIELDTYPE_PLAYER:       str = DecodePlayer(value); break;
			case FIELDTYPE_PROPSTATE:    str = DecodePropState(value); break;
			case FIELDTYPE_RESOURCE:     str = DecodeResource(value); break;
			case FIELDTYPE_SCORE:        str = DecodeScore(value); break;
			case FIELDTYPE_SWITCHACTION: str = DecodeSwitchAction(value); break;
			case FIELDTYPE_SWITCHSTATE:  str = DecodeSwitchState(value); break;
			case FIELDTYPE_AISCRIPT:     str = DecodeAIScript(value); break;
			case FIELDTYPE_COUNT:        str = DecodeCount(value); break;
			case FIELDTYPE_UNIT:         str = DecodeUnit(value); break;
			case FIELDTYPE_LOCATION:     str = DecodeLocation(value); break;
			case FIELDTYPE_STRING:       str = DecodeString(value); break;
			case FIELDTYPE_SWITCHNAME:   str = DecodeSwitchName(value); break;
			default: throw -1;
			}

			if(firstfield) firstfield = false;
			else buf << ", ";
			buf << str;
		}

		buf << ")";
	}

	if(content.prop & 0x2) {
		buf << ");\r\n";
	}

	else {
		buf << ";\r\n";
	}
}