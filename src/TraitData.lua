if not ExtendedAltarOfAshes.Config.Enabled then return end

ModUtil.LoadOnce(function ()
    -- Only add legendary if other mods have not already altered this table
    if #TraitRarityData.RarityUpgradeOrder == 4 and ExtendedAltarOfAshes.Config.AddLegendaryArcana then
        TraitRarityData.RarityUpgradeOrder = { "Common", "Rare", "Epic", "Heroic", "Legendary", }
    end
end)
