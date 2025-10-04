if not ExtendedAltarOfAshes.Config.Enabled then return end

ModUtil.LoadOnce(function ()
    local newMetaUpgradeLevelDatas = {
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 420, Mixer6Common = 1, MixerShadow = 1 }}, -- 31
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 460, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 500, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 540, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 580, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 620, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 660, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 700, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 740, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 780, Mixer6Common = 1, MixerShadow = 1 }}, -- 40

        { CostIncrease = 1, ResourceCost = { MemPointsCommon = 820, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 860, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 900, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 940, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 980, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1020, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1060, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1100, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1150, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1200, Mixer6Common = 3, MixerShadow = 3 }}, -- 50

		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerFBoss = 10, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerFBoss = 10, Mixer6Common = 2, MixerShadow = 2 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerGBoss = 10, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerGBoss = 10, Mixer6Common = 4, MixerShadow = 4 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerHBoss = 10, Mixer6Common = 5, MixerShadow = 5 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerHBoss = 10, Mixer6Common = 6, MixerShadow = 6 }}, -- 56, max to equip all 25 cards
	}
    local defaultNumUpgades = #MetaUpgradeCostData.MetaUpgradeLevelData
    for i, upgradeData in ipairs(newMetaUpgradeLevelDatas) do
        table.insert(MetaUpgradeCostData.MetaUpgradeLevelData, upgradeData)
        table.insert(ScreenData.MetaUpgradeCardLayout.BonePositions, ScreenData.MetaUpgradeCardLayout.BonePositions[defaultNumUpgades]) -- Fix crash due to missing "bone position" data
    end
    
    -- Sorceress, Medea
    table.insert(MetaUpgradeCardData.ChanneledCast.UpgradeResourceCost, { CardUpgradePoints = 5, PlantFMoly = 10, MixerIBoss = 2 })
    table.insert(MetaUpgradeCardData.ChanneledCast.UpgradeResourceCost, { CardUpgradePoints = 8, PlantFMoly = 15, MixerIBoss = 5, WeaponPointsRare = 1 })

    -- Wayward Son, Zagreus
    table.insert(MetaUpgradeCardData.HealthRegen.UpgradeResourceCost, { CardUpgradePoints = 5, OreFSilver = 12, SuperGiftPoints = 3 })
    table.insert(MetaUpgradeCardData.HealthRegen.UpgradeResourceCost, { CardUpgradePoints = 8, OreFSilver = 14, SuperGiftPoints = 5, WeaponPointsRare = 1 })

    -- Huntress, Artemis
    table.insert(MetaUpgradeCardData.LowManaDamageBonus.UpgradeResourceCost, { CardUpgradePoints = 6, PlantGLotus = 10, FamiliarPoints = 2 })
    table.insert(MetaUpgradeCardData.LowManaDamageBonus.UpgradeResourceCost, { CardUpgradePoints = 8, PlantGLotus = 14, FamiliarPoints = 4, WeaponPointsRare = 1 })

    -- Night, Nyx
    table.insert(MetaUpgradeCardData.MagicCrit.UpgradeResourceCost, { CardUpgradePoints = 10, PlantNMoss = 12, Mixer6Common = 2 })
    table.insert(MetaUpgradeCardData.MagicCrit.UpgradeResourceCost, { CardUpgradePoints = 12, PlantNMoss = 14, Mixer6Common = 3, WeaponPointsRare = 1 })

    -- Messenger, Hermes
    table.insert(MetaUpgradeCardData.BonusDodge.UpgradeResourceCost, { CardUpgradePoints = 9, MixerGBoss = 8, Mixer5Common = 1 })
    table.insert(MetaUpgradeCardData.BonusDodge.UpgradeResourceCost, { CardUpgradePoints = 12, MixerGBoss = 10, Mixer5Common = 2, WeaponPointsRare = 1 })

    -- Furies, Megaera, Alecto, & Tisiphone
    table.insert(MetaUpgradeCardData.CastBuff.UpgradeResourceCost, { CardUpgradePoints = 6, PlantFNightshade = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.CastBuff.UpgradeResourceCost, { CardUpgradePoints = 8, PlantFNightshade = 14, WeaponPointsRare = 2 })

    -- Persistence, Prometheus
    table.insert(MetaUpgradeCardData.BonusHealth.UpgradeResourceCost, { CardUpgradePoints = 6, OreNBronze = 10, MixerIBoss = 3 })
    table.insert(MetaUpgradeCardData.BonusHealth.UpgradeResourceCost, { CardUpgradePoints = 8, OreNBronze = 14, MixerIBoss = 5, WeaponPointsRare = 1 })

    -- Unseen, Hecate
    table.insert(MetaUpgradeCardData.ManaOverTime.UpgradeResourceCost, { CardUpgradePoints = 8, PlantGCattail = 14, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.ManaOverTime.UpgradeResourceCost, { CardUpgradePoints = 10, PlantGCattail = 18, WeaponPointsRare = 2 })

    -- Moon, Selene
    table.insert(MetaUpgradeCardData.SorceryRegenUpgrade.UpgradeResourceCost, { CardUpgradePoints = 13, PlantHMyrtle = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.SorceryRegenUpgrade.UpgradeResourceCost, { CardUpgradePoints = 16, PlantHMyrtle = 16, WeaponPointsRare = 2 })

    -- Lovers, Orpheus & Eurydice
    table.insert(MetaUpgradeCardData.ChanneledBlock.UpgradeResourceCost, { CardUpgradePoints = 9, OreGLime = 18, GiftPointsRare = 3 })
    table.insert(MetaUpgradeCardData.ChanneledBlock.UpgradeResourceCost, { CardUpgradePoints = 12, OreGLime = 20, GiftPointsRare = 5, WeaponPointsRare = 1 })

    -- Swift Runner, Achilles
    table.insert(MetaUpgradeCardData.SprintShield.UpgradeResourceCost, { CardUpgradePoints = 6, MixerNBoss = 5, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.SprintShield.UpgradeResourceCost, { CardUpgradePoints = 9, MixerNBoss = 8, WeaponPointsRare = 2 })

    -- Death, Thanatos
    table.insert(MetaUpgradeCardData.LastStand.UpgradeResourceCost, { CardUpgradePoints = 18, Mixer5Common = 2, MixerIBoss = 5 })
    -- table.insert(MetaUpgradeCardData.LastStand.UpgradeResourceCost, { CardUpgradePoints = 24, Mixer5Common = 3, MixerIBoss = 10, WeaponPointsRare = 3 }) UNTIL FIX

    -- Centaur, Chiron
    table.insert(MetaUpgradeCardData.MaxHealthPerRoom.UpgradeResourceCost, { CardUpgradePoints = 9, OreHGlassrock = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.MaxHealthPerRoom.UpgradeResourceCost, { CardUpgradePoints = 12, OreHGlassrock = 16, WeaponPointsRare = 2 })

    -- Eternity, Chronos
    table.insert(MetaUpgradeCardData.CastCount.UpgradeResourceCost, { CardUpgradePoints = 8, PlantNGarlic = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.CastCount.UpgradeResourceCost, { CardUpgradePoints = 10, PlantNGarlic = 16, WeaponPointsRare = 2 })

    -- Strength, Heracles
    table.insert(MetaUpgradeCardData.LowHealthBonus.UpgradeResourceCost, { CardUpgradePoints = 10, OreOIron = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.LowHealthBonus.UpgradeResourceCost, { CardUpgradePoints = 12, OreOIron = 16, WeaponPointsRare = 2 })

    -- The Enchantress, Circe
    table.insert(MetaUpgradeCardData.DoorReroll.UpgradeResourceCost, { CardUpgradePoints = 9, MetaFabric = 18, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.DoorReroll.UpgradeResourceCost, { CardUpgradePoints = 12, MetaFabric = 24, WeaponPointsRare = 2 })

    -- Boatman, Charon
    table.insert(MetaUpgradeCardData.StartingGold.UpgradeResourceCost, { CardUpgradePoints = 18, OreIMarble = 15, CharonPoints = 5 })
    table.insert(MetaUpgradeCardData.StartingGold.UpgradeResourceCost, { CardUpgradePoints = 24, OreIMarble = 20, CharonPoints = 10, WeaponPointsRare = 2 })

    -- Origination, Chaos
    table.insert(MetaUpgradeCardData.StatusVulnerability.UpgradeResourceCost, { CardUpgradePoints = 10, PlantOMandrake = 6, Mixer5Common = 3 })
    table.insert(MetaUpgradeCardData.StatusVulnerability.UpgradeResourceCost, { CardUpgradePoints = 15, PlantOMandrake = 12, Mixer5Common = 5, WeaponPointsRare = 1 })

    -- Excellence, Patroclus
    table.insert(MetaUpgradeCardData.RarityBoost.UpgradeResourceCost, { CardUpgradePoints = 12, MetaFabric = 12, MetaCardPointsCommon = 250, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.RarityBoost.UpgradeResourceCost, { CardUpgradePoints = 15, MetaFabric = 18, MetaCardPointsCommon = 500, WeaponPointsRare = 2 })

    -- Queen, Persephone
    table.insert(MetaUpgradeCardData.BonusRarity.UpgradeResourceCost, { CardUpgradePoints = 6, MetaFabric = 24, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.BonusRarity.UpgradeResourceCost, { CardUpgradePoints = 8, MetaFabric = 30, WeaponPointsRare = 2 })

    -- The Fates, Three Fates
    table.insert(MetaUpgradeCardData.TradeOff.UpgradeResourceCost, { CardUpgradePoints = 8, MixerIBoss = 6 })
    table.insert(MetaUpgradeCardData.TradeOff.UpgradeResourceCost, { CardUpgradePoints = 10, MixerIBoss = 10, WeaponPointsRare = 1 })

    -- Champions, Theseus & Asterius
    table.insert(MetaUpgradeCardData.ScreenReroll.UpgradeResourceCost, { CardUpgradePoints = 12, PlantIShaderot = 12, WeaponPointsRare = 1 })
    table.insert(MetaUpgradeCardData.ScreenReroll.UpgradeResourceCost, { CardUpgradePoints = 14, PlantIShaderot = 18, WeaponPointsRare = 2 })

    -- Artificer, Daedalus
    table.insert(MetaUpgradeCardData.MetaToRunUpgrade.UpgradeResourceCost, { CardUpgradePoints = 18, PlantIPoppy = 10, WeaponPointsRare = 1 })
    -- table.insert(MetaUpgradeCardData.MetaToRunUpgrade.UpgradeResourceCost, { CardUpgradePoints = 20, PlantIPoppy = 12, WeaponPointsRare = 2 }) UNTIL FIX

    -- Divinity, Zeus & Hera
    table.insert(MetaUpgradeCardData.EpicRarityBoost.UpgradeResourceCost, { CardUpgradePoints = 10, MixerHBoss = 8 })
    table.insert(MetaUpgradeCardData.EpicRarityBoost.UpgradeResourceCost, { CardUpgradePoints = 15, MixerHBoss = 10, WeaponPointsRare = 1 })

    -- Judgment, Hades
    table.insert(MetaUpgradeCardData.CardDraw.UpgradeResourceCost, { CardUpgradePoints = 20, PlantChaosThalamus = 6, MetaFabric = 25, MixerIBoss = 5 })
    table.insert(MetaUpgradeCardData.CardDraw.UpgradeResourceCost, { CardUpgradePoints = 20, PlantChaosThalamus = 8, MetaFabric = 25, MixerIBoss = 8 })
end)


