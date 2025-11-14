if not ExtendedAltarOfAshes.Config.Enabled or not ExtendedAltarOfAshes.Config.AddLegendaryArcana then return end

ModUtil.LoadOnce(function ()
    for _, metaUpgradeName in ipairs(GameData.AllMetaUpgradeTraits) do
        local metaUpgrade = TraitSetData.MetaUpgrade[metaUpgradeName]
        local rarityLevels = metaUpgrade and metaUpgrade.RarityLevels
        if rarityLevels and rarityLevels.Heroic and rarityLevels.Epic then
            local heroic = rarityLevels.Heroic.Multiplier
            local epic = rarityLevels.Epic.Multiplier
            if heroic ~= nil and epic ~= nil then
                -- Increment the Heroic multiplier by the same as the distance between Epic->Heroic
                rarityLevels.Legendary = { Multiplier = 2 * heroic - epic }
            else
                ModUtil.Warn("Could add Legendary Upgrade for upgrade " .. tostring(metaUpgradeName))
            end
        end
    end
end)

