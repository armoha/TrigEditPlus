-- return Action(0, 0, 0, 0, Player, Number, Unit, 45, Modifier, 20)
RegisterActionHook(function(a1, a2, a3, a4, Player, Number, Unit, ACTTYPE, Modifier, a10)
	if ACTTYPE == 45 and ((Player > 28) or (Unit > 228)) then
		local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
		if 0x6C9C78 <= offset and offset <= 0x6C9C78 + 208 * 2 then
			ID = (offset - 0x6C9C78) / 2
			if Number >= 65536 then
				Number = Number / 65536
				ID = ID + 1
			end
			return "F���ӵ�("  .. ID .. ", " .. Modifier .. ", " .. Number .. ");", 100
		end
	end
end)

---- File F���ӵ�.lua ----
function F���ӵ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6C9C78 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	elseif b == Add or b == Subtract then
		string = SetMemory2(0x6C9C78 + a*2, b, c)		
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9C78 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File F���ߴ°Ÿ�.lua ----
function F���ߴ°Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6C9930 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9930 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File F��������Ʈ.lua ----
function F��������Ʈ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6CA318 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6CA318 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File F�̵�����.lua ----
function F�̵�����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6C9858 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9858 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File F�ְ�ӵ�.lua ----
function F�ְ�ӵ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6C9EF8 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9EF8 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File Fȸ���ݰ�.lua ----
function Fȸ���ݰ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6C9E20 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9E20 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File IGRP����.lua ----
function IGRP����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x668AA0 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x668AA0 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I���ݿ�������.lua ----
function I���ݿ�������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66B1B0 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66B1B0 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I�׷���ȸ��.lua ----
function I�׷���ȸ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66E860 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66E860 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File I��������������.lua ----
function I��������������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66A210 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66A210 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I��ﶧ����.lua ----
function I��ﶧ����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66D8C0 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66D8C0 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I�����α��.lua ----
function I�����α��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x669E28 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669E28 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File I�����λ���.lua ----
function I�����λ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x669A40 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669A40 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File I����׷���.lua ----
function I����׷���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66C538 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C538 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I��ũ��ƮID.lua ----
function I��ũ��ƮID(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66EC48 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66EC48 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File I�����ÿ���.lua ----
function I�����ÿ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x666778 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666778 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File IŬ��ŷ����.lua ----
function IŬ��ŷ����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x667718 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667718 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File IŬ������.lua ----
function IŬ������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x66C150 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C150 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File IƯ����������.lua ----
function IƯ����������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x667B00 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667B00 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File L��ġ����.lua ----
function L��ġ����(a,b,c,d,e) -- (LocationNum,Left,Up,Right,Down)
	tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*0, SetTo, b))
	table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*1, SetTo, c))
	table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*2, SetTo, d)) 
	table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*3, SetTo, e))
	return tu
end

---- File L��ġ�̵�.lua ----
function L��ġ�̵�(a,b,c) -- (LocationNum,Type,Value)
	tu = {}
	if b == 'R' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*0, Add, c))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*2, Add, c)) 
	end	
	if b == 'L' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*0, Subtract, c))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*2, Subtract, c)) 
	end
	if b == 'U' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*1, Subtract, c))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*3, Subtract, c))
	end
	if b == 'D' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*1, Add, c))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*3, Add, c))
	end
	return tu
end

---- File P���׻�밡���α�.lua ----
function P���׻�밡���α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582144 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582144 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P���׻���α�.lua ----
function P���׻���α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582174 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582174 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�����ִ��α�.lua ----
function P�����ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x5821A4 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821A4 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�ִ���׷��̵�.lua ----
function P�ִ���׷��̵�(a,b,c) -- (Player, Upnum, Upcount)
	if b < 46 then
		if c > 0 then
			string = SetMemory2(0x58D088 + 0x2E*a + b, Add, c)
		else
			string = SetMemory2(0x58D088 + 0x2E*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F278 + 0xF*a + b - 46, Add, c)
		else
			string = SetMemory2(0x58F278 + 0xF*a + b - 46, Subtract, math.abs(c))
		end
	end
	return string
end

---- File P�ִ���ũ.lua ----
function P������ũ(a,b,c) -- (Player, Upnum, Upcount)
	if b < 24 then
		if c > 0 then
			string = SetMemory2(0x58CE24 + 0x18*a + b, Add, c)
		else
			string = SetMemory2(0x58CE24 + 0x18*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F050 + 0x14*a + b - 24, Add, c)
		else
			string = SetMemory2(0x58F050 + 0x14*a + b - 24, Subtract, math.abs(c))
		end
	end
	return string
end

---- File P�׶���밡���α�.lua ----
function P�׶���밡���α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x5821D4 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821D4 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�׶�����α�.lua ----
function P�׶�����α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582204 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582204 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�׶��ִ��α�.lua ----
function P�׶��ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582234 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582234 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�����佺��밡���α�.lua ----
function P�����佺��밡���α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582264 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582264 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�����佺����α�.lua ----
function P�����佺����α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x582294 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582294 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P�����佺�ִ��α�.lua ----
function P�����佺�ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x5822C4 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5822C4 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File P������׷��̵�.lua ----
function P������׷��̵�(a,b,c) -- (Player, Upnum, Upcount)
	if b < 46 then
		if c > 0 then
			string = SetMemory2(0x58D2B0 + 0x2E*a + b, Add, c)
		else
			string = SetMemory2(0x58D2B0 + 0x2E*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F32C + 0xF*a + b - 46, Add, c)
		else
			string = SetMemory2(0x58F32C + 0xF*a + b - 46, Subtract, math.abs(c))
		end
	end
	return string
end

---- File P������ũ.lua ----
function P������ũ(a,b,c) -- (Player, Upnum, Upcount)
	if b < 24 then
		if c > 0 then
			string = SetMemory2(0x58CF44 + 0x18*a + b, Add, c)
		else
			string = SetMemory2(0x58CF44 + 0x18*a + b, Subtract, math.abs(c))
		end
	else
		if c > 0 then
			string = SetMemory2(0x58F140 + 0x14*a + b - 24, Add, c)
		else
			string = SetMemory2(0x58F140 + 0x14*a + b - 24, Subtract, math.abs(c))
		end
	end
	return string
end

---- File SetMemory2.lua ----
function SetMemory2(a,b,c)
 string = SetMemory(a - a%4, b, c*256^(a%4))
 return string
end


---- File S����������.lua ----
function S����������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x665C48 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665C48 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File S���ýÿ�ũ��.lua ----
function S���ýÿ�ũ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x665A3E + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665A3E + a*1, d, math.abs(b - c))
	end
	return string
end


---- File S����ġ.lua ----
function S����ġ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x665FD8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665FD8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File S�̹�������.lua ----
function S�̹�������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x666160 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666160 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Sü�¹�ũ��.lua ----
function Sü�¹�ũ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x665E50 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665E50 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File T����.lua ----
function T����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6561F0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6561F0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T������.lua ----
function T������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656380 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656380 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T�̳׶�.lua ----
function T�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656248 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656248 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T�ð�.lua ----
function T�ð�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6563D8 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6563D8 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T������.lua ----
function T������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656430 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656430 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T�̸�.lua ----
function T�̸�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6562A0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6562A0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File T����.lua ----
function T����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656488 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656488 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File Upissed�Ҹ���.lua ----
function Upissed�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x661EE8 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661EE8 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Upissed�Ҹ�ó��.lua ----
function Upissed�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663B38 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663B38 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP����.lua ----
function UP����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655840 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655840 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP�̳׶�.lua ----
function UP�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655740 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655740 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP�ð�.lua ----
function UP�ð�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655B80 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655B80 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP������.lua ----
function UP������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655AC0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655AC0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP�̸�.lua ----
function UP�̸�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655A40 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655A40 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP����.lua ----
function UP����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655BFC + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655BFC + a*1, d, math.abs(b - c))
	end
	return string
end


---- File UP�ִ뷹��.lua ----
function UP�ִ뷹��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655700 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655700 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File UP�߰�����.lua ----
function UP�߰�����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6557C0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6557C0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP�߰��̳׶�.lua ----
function UP�߰��̳׶�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6559C0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6559C0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File UP�߰��ð�.lua ----
function UP�߰��ð�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x655B80 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655B80 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Uwhat�Ҹ���.lua ----
function Uwhat�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662BF0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662BF0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Uwhat�Ҹ�ó��.lua ----
function Uwhat�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x65FFB0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FFB0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Uyes�Ҹ���.lua ----
function Uyes�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x661440 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661440 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File Uyes�Ҹ�ó��.lua ----
function Uyes�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663C10 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663C10 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U����.lua ----
function U����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x65FD00 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FD00 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U���.lua ----
function U���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663DD0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663DD0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����AI.lua ----
function U����AI(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663320 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663320 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U������AI.lua ----
function U������AI(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x664898 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664898 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U���߹���.lua ----
function U���߹���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6616E0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6616E0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�׷��÷���.lua ----
function U�׷��÷���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6637A0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6637A0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�����ΰ�����.lua ----
function U�����ΰ�����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x660178 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660178 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����.lua ----
function U����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663150 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663150 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�̳׶�.lua ----
function U�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663888 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663888 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U��.lua ----
function U��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6635D0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6635D0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����.lua ----
function U����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x65FEC8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FEC8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U���Ÿ��.lua ----
function U���Ÿ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662180 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662180 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�ΰ���Ÿ�.lua ----
function U�ΰ���Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662DB8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662DB8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�ΰ�����.lua ----
function U�ΰ�����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6607C0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6607C0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U����⺻AI.lua ----
function U����⺻AI(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662268 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662268 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U������.lua ----
function U������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6610B0 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6610B0 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File U����Ҹ�.lua ----
function U����Ҹ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x661FC0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661FC0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U����ӵ�.lua ----
function U����ӵ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x660428 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660428 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U���������.lua ----
function U���������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663408 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663408 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U����ũ��.lua ----
function U����ũ��(a,b,c) -- (UnitID,����,����)
	tu = {}	
	table.insert(tu, SetMemory(0x662860+a*4,SetTo,b+c*65536))	
	return tu
end


---- File U��������.lua ----
function U��������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6605F0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6605F0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U���ۼҸ�.lua ----
function U���ۼҸ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x664410 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664410 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����������.lua ----
function U����������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x660988 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660988 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����.lua ----
function U����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x660E00 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660E00 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U���忩��.lua ----
function U���忩��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6647B0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6647B0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U����Ⱦ����Ƽ.lua ----
function U����Ⱦ����Ƽ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x664080 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664080 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File U�þ�.lua ----
function U�þ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663238 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663238 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U���ö�AI.lua ----
function U���ö�AI(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663A50 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663A50 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�����;����Ƽ.lua ----
function U�����;����Ƽ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x661518 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661518 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U����.lua ----
function U����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6644F8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6644F8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U��Ŭ�����.lua ----
function U��Ŭ�����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662098 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662098 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�̸�.lua ----
function U�̸�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x660260 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660260 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U�α����޷�.lua ----
function U�α����޷�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6646C8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6646C8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U�α��Ҹ�.lua ----
function U�α��Ҹ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663CE8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663CE8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File U���󹫱�.lua ----
function U���󹫱�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6636B8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6636B8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File Uü��.lua ----
function Uü��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662350 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662350 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File U��ǻ�ͱ⺻AI.lua ----
function U��ǻ�ͱ⺻AI(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662EA0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662EA0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File Uũ��.lua ----
function Uũ��(a,b,c,d,e) -- (UnitID,Left,Right,Up,Down)
	tu = {}	
	table.insert(tu, SetMemory(0x6617C8+a*8,SetTo,b+d*65536))	
	table.insert(tu, SetMemory(0x6617C8+a*8+4,SetTo,c+e*65536))
	return tu
end

---- File U�ı�������.lua ----
function U�ı�������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x663EB8 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663EB8 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File U��Ʈ����Ʈ.lua ----
function U��Ʈ����Ʈ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x662F88 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662F88 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���ݰ���.lua ----
function W���ݰ���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656990 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656990 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W���ݴ��.lua ----
function W���ݴ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657998 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657998 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���ݷ�.lua ----
function W���ݷ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656EB0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656EB0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���ݷ�������.lua ----
function W���ݷ�������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657678 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657678 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���ݼӵ�.lua ----
function W���ݼӵ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656FB8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656FB8 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W����Ƚ��.lua ----
function W����Ƚ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6564E0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6564E0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W����������.lua ----
function W����������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657258 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657258 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W����X��ǥ.lua ----
function W����X��ǥ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657910 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657910 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W����Y��ǥ.lua ----
function W����Y��ǥ(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656C20 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656C20 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W�̻��Ϲ��.lua ----
function W�̻��Ϲ��(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656670 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656670 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W�߻�ȸ����.lua ----
function W�߻�ȸ����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657888 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657888 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W���÷�������.lua ----
function W���÷�������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656888 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656888 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���÷����ܰ�.lua ----
function W���÷����ܰ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657780 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657780 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���÷����߰�.lua ----
function W���÷����߰�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6570C8 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6570C8 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W������.lua ----
function W������(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656780 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656780 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W���׷��̵�.lua ----
function W���׷��̵�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6571D0 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6571D0 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W����.lua ----
function W����(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656CA8 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656CA8 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File W�̸�.lua ----
function W�̸�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6572E0 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6572E0 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W�ִ��Ÿ�.lua ----
function W�ִ��Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657470 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657470 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File W�ּһ�Ÿ�.lua ----
function W�ּһ�Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656A18 + a*4
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656A18 + a*4, d, math.abs(b - c))
	end
	return string
end


---- File WŸ�ٿ����޼���.lua ----
function WŸ�ٿ����޼���(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x656568 + a*2
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656568 + a*2, d, math.abs(b - c))
	end
	return string
end


---- File W����ü���ӽð�.lua ----
function W����ü���ӽð�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x657040 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657040 + a*1, d, math.abs(b - c))
	end
	return string
end


---- File W���߼Ӽ�.lua ----
function W���߼Ӽ�(a,b,c) -- (ID, OldCode, NewCode)
	if b == SetTo then
		e = 0x6566F8 + a*1
		string = SetMemory(e - e%4, SetTo, c)
	else
		if b < c then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6566F8 + a*1, d, math.abs(b - c))
	end
	return string
end
