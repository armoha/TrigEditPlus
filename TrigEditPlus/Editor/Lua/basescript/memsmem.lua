function EPD(offset)
    return (offset - 0x58A364) / 4
end

function Memory(offset, comparison, number)
    assert(offset % 4 == 0, "[Memory] Offset should be divisible by 4")

    if 0x58A364 <= offset and offset <= 0x58A364 + 48 * 65536 then
        local eud_player, eud_unit
        eud_player = (offset - 0x58A364) / 4 % 12
        eud_unit = ((offset - 0x58A364) / 4 - eud_player) / 12
        return Deaths(eud_player, comparison, number, eud_unit)
    end
    
    return Deaths(EPD(offset), comparison, number, 0)
end

function SetMemory(offset, modtype, number)
    assert(offset % 4 == 0, "[SetMemory] Offset should be divisible by 4")

    -- If offset is in normal deaths / eud range, use it.
    if 0x58A364 <= offset and offset <= 0x58A364 + 48 * 65536 then
        local eud_player, eud_unit
        eud_player = (offset - 0x58A364) / 4 % 12
        eud_unit = ((offset - 0x58A364) / 4 - eud_player) / 12
        return SetDeaths(eud_player, modtype, number, eud_unit)
    else  -- Use EPD
	return SetDeaths(EPD(offset), modtype, number, 0)
    end
end

----------------------------------------------------------

RegisterDeathsHook(function(Player, Comparison, Number, Unit)
    if Player >= 28 or (Player < 12 and Unit >= 233) then
        Offset = 0x58A364 + (Player + Unit * 12) * 4
        return "SetMemory(0x" .. string.format("%06X", Offset) .. ", " .. DecodeComparison(Comparison) .. ", " .. Number .. ");", -65536
    end
end)

RegisterSetDeathsHook(function(Player, ModType, Number, Unit)
    if Player >= 28 or (Player < 12 and Unit >= 233) then
        Offset = 0x58A364 + (Player + Unit * 12) * 4
        return "SetMemory(0x" .. string.format("%06X", Offset) .. ", " .. DecodeModifier(ModType) .. ", " .. Number .. ");", -65536
    end
end)
