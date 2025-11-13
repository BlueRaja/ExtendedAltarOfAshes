if not config.Enabled then return end
if config.LiteMode.Enabled then return end

ModUtil.LoadOnce(function ()
    TraitRarityData.RarityUpgradeOrder = { "Common", "Rare", "Epic", "Heroic", "Legendary", }
end)
