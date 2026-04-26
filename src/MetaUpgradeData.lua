if not ExtendedAltarOfAshes.Config.Enabled then return end

local function multiplyCosts(costTable, multiplier)
	local result = {}
	for key, value in pairs(costTable) do
		result[key] = math.ceil(value * multiplier)
	end
	return result
end

-- Adds heroic/legendary upgrade levels to arcana tables
local function addAdditionalUpgrades(upgradeTable, skipLegendary)
	if upgradeTable == nil or upgradeTable.UpgradeResourceCost == nil or upgradeTable._ExtendedAltarLevelsApplied then
		return
	end

	local lastUpgrade = upgradeTable.UpgradeResourceCost[#upgradeTable.UpgradeResourceCost]
	if lastUpgrade then
		table.insert(upgradeTable.UpgradeResourceCost, multiplyCosts(lastUpgrade, 1.5))
		if ExtendedAltarOfAshes.Config.AddLegendaryArcana and not skipLegendary then
			table.insert(upgradeTable.UpgradeResourceCost, multiplyCosts(lastUpgrade, 2))
		end
	end

	upgradeTable._ExtendedAltarLevelsApplied = true
end

local function applyExtendedMetaUpgradeData()
	local currentMaxGrasp = #MetaUpgradeCostData.MetaUpgradeLevelData
	if currentMaxGrasp < ExtendedAltarOfAshes.Config.MaxGrasp then
		local templateBonePosition = ScreenData.MetaUpgradeCardLayout.BonePositions[currentMaxGrasp]
		for i = currentMaxGrasp + 1, ExtendedAltarOfAshes.Config.MaxGrasp do
			-- Cost will be X Psyche, 1 Star Dust, 1 Shadow
			table.insert(MetaUpgradeCostData.MetaUpgradeLevelData, { CostIncrease = 1, ResourceCost = { MemPointsCommon = 500 + 40 * i, Mixer5Common = 1, MixerShadow = 1 } })
			table.insert(ScreenData.MetaUpgradeCardLayout.BonePositions, templateBonePosition) -- Fix crash due to missing "bone position" data
		end
	end

	-- Add additional upgrade levels to all upgrade tables
	addAdditionalUpgrades(MetaUpgradeCardData.ChanneledCast, false)
	addAdditionalUpgrades(MetaUpgradeCardData.HealthRegen, false)
	addAdditionalUpgrades(MetaUpgradeCardData.LowManaDamageBonus, false)
	addAdditionalUpgrades(MetaUpgradeCardData.MagicCrit, false)
	addAdditionalUpgrades(MetaUpgradeCardData.BonusDodge, false)
	addAdditionalUpgrades(MetaUpgradeCardData.CastBuff, false)
	addAdditionalUpgrades(MetaUpgradeCardData.BonusHealth, false)
	addAdditionalUpgrades(MetaUpgradeCardData.ManaOverTime, false)
	addAdditionalUpgrades(MetaUpgradeCardData.SorceryRegenUpgrade, false)
	addAdditionalUpgrades(MetaUpgradeCardData.ChanneledBlock, false)
	addAdditionalUpgrades(MetaUpgradeCardData.SprintShield, false)
	addAdditionalUpgrades(MetaUpgradeCardData.LastStand, true) -- Skipping because the legendary upgrade doesn't work correctly
	addAdditionalUpgrades(MetaUpgradeCardData.MaxHealthPerRoom, false)
	addAdditionalUpgrades(MetaUpgradeCardData.CastCount, false)
	addAdditionalUpgrades(MetaUpgradeCardData.LowHealthBonus, false)
	addAdditionalUpgrades(MetaUpgradeCardData.DoorReroll, false)
	addAdditionalUpgrades(MetaUpgradeCardData.StartingGold, false)
	addAdditionalUpgrades(MetaUpgradeCardData.StatusVulnerability, false)
	addAdditionalUpgrades(MetaUpgradeCardData.RarityBoost, false)
	addAdditionalUpgrades(MetaUpgradeCardData.BonusRarity, false)
	addAdditionalUpgrades(MetaUpgradeCardData.TradeOff, false)
	addAdditionalUpgrades(MetaUpgradeCardData.ScreenReroll, false)
	addAdditionalUpgrades(MetaUpgradeCardData.MetaToRunUpgrade, true) -- Skipping because the legendary upgrade doesn't work correctly
	addAdditionalUpgrades(MetaUpgradeCardData.EpicRarityBoost, false)
	addAdditionalUpgrades(MetaUpgradeCardData.CardDraw, false)
end

-- "Post-Launch Patch 2" added code that reverts the MetaUpgradeState.Level to the max available level
-- when the code is run, essentially going out of its way to break this mod.
-- Thus we need to patch the MetaUpgradeState before that code is run.
-- Doing it in ModUtil.LoadOnce() is too late, so instead we run it before DoPatches()
ModUtil.Path.Wrap("DoPatches", function(baseFunc)
	applyExtendedMetaUpgradeData()
	return baseFunc()
end, ExtendedAltarOfAshes)
