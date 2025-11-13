if config.enabled == false then return end
if config.LiteMode.Enabled then return end

ModUtil.LoadOnce(function ()
    TraitRarityData.RarityUpgradeOrder = { "Common", "Rare", "Epic", "Heroic", "Legendary", }
end)
