--[[

EUDGenerator v0.5 by JPoker (sksljh2091@naver.com)

Deaths/SetDeaths hooks has been stripped down because of bugs.

]]


local function SetMemory2(a,b,c)
    string = SetMemory(a - a%4, b, c*256^(a%4))
    return string
end

function U�̸�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x660260 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x660260 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Uü��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662350 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662350 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function U����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x660E00 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x660E00 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U���忩��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6647B0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6647B0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x65FEC8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x65FEC8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6635D0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6635D0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663888 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663888 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x65FD00 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x65FD00 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U����ӵ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x660428 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x660428 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U���󹫱�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6636B8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6636B8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U���߹���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6616E0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6616E0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�α��Ҹ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663CE8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663CE8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�α����޷�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6646C8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6646C8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�׷��÷���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6637A0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6637A0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U���ۼҸ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x664410 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x664410 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U����������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x660988 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x660988 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U���������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663408 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663408 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U�ı�������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663EB8 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663EB8 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U���Ÿ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662180 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662180 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�þ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663238 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663238 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�ΰ���Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662DB8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662DB8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U����Ⱦ����Ƽ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x664080 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x664080 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function U�ΰ�����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6607C0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6607C0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U����Ҹ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x661FC0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x661FC0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Uyes�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663C10 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663C10 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Uyes�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x661440 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x661440 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Uwhat�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x65FFB0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x65FFB0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Uwhat�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662BF0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662BF0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Upissed�Ҹ�ó��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663B38 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663B38 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function Upissed�Ҹ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x661EE8 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x661EE8 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6644F8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6644F8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6610B0 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6610B0 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function U��Ʈ����Ʈ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662F88 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662F88 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663150 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663150 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U��������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6605F0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6605F0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�����;����Ƽ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x661518 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x661518 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function U���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663DD0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663DD0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U��ǻ�ͱ⺻AI(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662EA0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662EA0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U����⺻AI(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662268 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662268 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U������AI(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x664898 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x664898 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U����AI(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663320 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663320 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U���ö�AI(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x663A50 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x663A50 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U��Ŭ�����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x662098 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x662098 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U�����ΰ�����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x660178 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x660178 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function U���佺Ƽ������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x664980 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x664980 + (a-106) * 4, d, math.abs(b - c))
    end
    return string
end

function W���ݷ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656EB0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656EB0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W���ݷ�������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657678 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657678 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W����Ƚ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6564E0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6564E0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W���ݼӵ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656FB8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656FB8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W�̸�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6572E0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6572E0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W�̻��Ϲ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656670 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656670 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656CA8 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656CA8 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function W������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656780 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656780 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W���ݰ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656990 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656990 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W����ü���ӽð�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657040 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657040 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W�߻�ȸ����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657888 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657888 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W���ݴ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657998 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657998 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W�ּһ�Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656A18 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656A18 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function W�ִ��Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657470 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657470 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function W���÷�������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656888 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656888 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W���÷����߰�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6570C8 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6570C8 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W���÷����ܰ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657780 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657780 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W���߼Ӽ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6566F8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6566F8 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W����������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657258 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657258 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W���׷��̵�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6571D0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6571D0 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function WŸ�ٿ����޼���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656568 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656568 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function W����X��ǥ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x657910 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x657910 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function W����Y��ǥ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656C20 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656C20 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function F�ְ�ӵ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6C9EF8 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6C9EF8 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function F���ӵ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6C9C78 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6C9C78 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function F���ߴ°Ÿ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6C9930 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6C9930 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function Fȸ���ݰ�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6C9E20 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6C9E20 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function F�̵�����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6C9858 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6C9858 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function F��������Ʈ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6CA318 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6CA318 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function S����������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x665C48 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x665C48 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function S���ÿ�ũ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x665AC0 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x665AC0 + (a-130) * 1, d, math.abs(b - c))
    end
    return string
end

function Sü�¹�ũ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x665E50 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x665E50 + (a-130) * 1, d, math.abs(b - c))
    end
    return string
end

function S����ġ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x665FD8 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x665FD8 + (a-130) * 1, d, math.abs(b - c))
    end
    return string
end

function S�̹���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x666160 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x666160 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function IGRP����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x668AA0 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x668AA0 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function I��ũ��Ʈ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66EC48 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66EC48 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function Iȸ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66E860 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66E860 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function IŬ��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66C150 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66C150 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function IŬ��ŷ(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x667718 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x667718 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function I�����λ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x669A40 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x669A40 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function I�����α��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x669E28 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x669E28 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function I���ݿ�������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66B1B0 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66B1B0 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function I��������������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66A210 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66A210 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function IƯ����������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x667B00 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x667B00 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function I�����ÿ���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x666778 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x666778 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function I��ﶧ����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66D8C0 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66D8C0 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function I����׷���(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x66C538 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x66C538 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function UP������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655AC0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655AC0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�̸�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655A40 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655A40 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655740 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655740 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655840 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655840 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�ð�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655B80 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655B80 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�߰��̳׶�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6559C0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6559C0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�߰�����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6557C0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6557C0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�߰��ð�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655B80 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655B80 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function UP�ִ뷹��(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655700 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655700 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function UP����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x655BFC + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x655BFC + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function T������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656430 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656430 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T�̸�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6562A0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6562A0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T�̳׶�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656248 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656248 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6561F0 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6561F0 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T�ð�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x6563D8 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x6563D8 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T������(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656380 + a*2
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656380 + (a-0) * 2, d, math.abs(b - c))
    end
    return string
end

function T����(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x656488 + a*1
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x656488 + (a-0) * 1, d, math.abs(b - c))
    end
    return string
end

function P���׻�밡���α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582144 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582144 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P���׻���α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582174 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582174 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�����ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x5821A4 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x5821A4 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�׶���밡���α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x5821D4 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x5821D4 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�׶�����α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582204 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582204 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�׶��ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582234 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582234 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�����佺��밡���α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582264 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582264 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�����佺����α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x582294 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x582294 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function P�����佺�ִ��α�(a,b,c) -- (ID, OldCode, NewCode)
    local d, e
    if b == SetTo then
        e = 0x5822C4 + a*4
        string = SetMemory(e - e%4, SetTo, c)
    else
        if b < c then
            d = Add
        else
            d = Subtract
        end
        string = SetMemory2(0x5822C4 + (a-0) * 4, d, math.abs(b - c))
    end
    return string
end

function Uũ��(a,b,c,d,e) -- (UnitID,Left,Right,Up,Down)
    tu = {} 
    table.insert(tu, SetMemory(0x6617C8+a*8,SetTo,b+d*65536))   
    table.insert(tu, SetMemory(0x6617C8+a*8+4,SetTo,c+e*65536))
    return tu
end

function Uũ��LU(a,b,c) -- (UnitID,Left,Up)
    tu = {} 
    table.insert(tu, SetMemory(0x6617C8+a*8,SetTo,b+c*65536))   
    return tu
end

function Uũ��RD(a,b,c) -- (UnitID,Righ,Down)
    tu = {} 
    table.insert(tu, SetMemory(0x6617C8+a*8 + 4,SetTo,b+c*65536))   
    return tu
end


function U����ũ��(a,b,c) -- (UnitID,����,����)
    tu = {} 
    table.insert(tu, SetMemory(0x662860+a*4,SetTo,b+c*65536))   
    return tu
end

function L��ġ����(a,b,c,d,e) -- (LocationNum,Left,Up,Right,Down)
    tu = {}
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*0, SetTo, b))
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*1, SetTo, c))
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*2, SetTo, d)) 
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*3, SetTo, e))
    return tu
end

function L��ġL(a,b,c) -- (LocationNum,Modify,Num)
    tu = {}
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*0, b, c))
    return tu
end

function L��ġU(a,b,c) -- (LocationNum,Modify,Num)
    tu = {}
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*1, b, c))
    return tu
end

function L��ġR(a,b,c) -- (LocationNum,Modify,Num)
    tu = {}
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*2, b, c)) 
    return tu
end

function L��ġD(a,b,c) -- (LocationNum,Modify,Num)
    tu = {}
    table.insert(tu, SetMemory(0x58DC60 + 0x14*a + 4*3, b, c))
    return tu
end



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