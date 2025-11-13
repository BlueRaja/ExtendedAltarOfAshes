if config.enabled == false then return end

ModUtil.LoadOnce(function ()
    local newMetaUpgradeLevelDatas = {}
	if config.LiteMode.Enabled then 
		local newMetaUpgrade = {
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 550, Mixer5Common = 1, MixerShadow = 1 }}, -- 31 (550 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 600, Mixer5Common = 1, MixerShadow = 1 }}, -- 32 (600 grasp, 1 star dust, 1 shadow) 
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 650, Mixer5Common = 1, MixerShadow = 1 }}, -- 33 (650 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 700, Mixer5Common = 1, MixerShadow = 1 }}, -- 34 (700 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 750, Mixer5Common = 1, MixerShadow = 1 }}, -- 35 (750 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 800, Mixer5Common = 1, MixerShadow = 1 }}, -- 36 (800 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 850, Mixer5Common = 1, MixerShadow = 1 }}, -- 37 (850 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 900, Mixer5Common = 1, MixerShadow = 1 }}, -- 38 (900 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 950, Mixer5Common = 1, MixerShadow = 1 }}, -- 39 (950 grasp, 1 star dust, 1 shadow)
			{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, Mixer5Common = 1, Mixer6Common = 1 }}, -- 40 (cap) (1000 grasp, 1 star dust, 1 darkness)
		}
		for k, v in ipairs(newMetaUpgrade) do
            table.insert(newMetaUpgradeLevelDatas, v)
        end
	else
		local newMetaUpgrade = {
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
		for k, v in ipairs(newMetaUpgrade) do
            table.insert(newMetaUpgradeLevelDatas, v)
        end	
	end
		
    local defaultNumUpgades = #MetaUpgradeCostData.MetaUpgradeLevelData
    for i, upgradeData in ipairs(newMetaUpgradeLevelDatas) do
        table.insert(MetaUpgradeCostData.MetaUpgradeLevelData, upgradeData)
        table.insert(ScreenData.MetaUpgradeCardLayout.BonePositions, ScreenData.MetaUpgradeCardLayout.BonePositions[defaultNumUpgades]) -- Fix crash due to missing "bone position" data
    end

	if config.LiteMode.Enabled then
		-- Sorceress, Medea: 3 moon dust/1 tear epic -> 5 moon dust/2 tears heroic
	    table.insert(MetaUpgradeCardData.ChanneledCast.UpgradeResourceCost, { CardUpgradePoints = 5, MixerHBoss = 2 })
	
	    -- Wayward Son, Zagreus: 3 moon dust/1 cinder epic -> 5 moon dust/2 cinder heroic 
	    table.insert(MetaUpgradeCardData.HealthRegen.UpgradeResourceCost, { CardUpgradePoints = 5, MixerFBoss = 2 })
	
	    -- Huntress, Artemis: 3 moon dust/2 wool epic -> 5 moon dust/3 wool heroic 
	    table.insert(MetaUpgradeCardData.LowManaDamageBonus.UpgradeResourceCost, { CardUpgradePoints = 5, MixerNBoss = 3 })
	
	    -- Eternity, Chronos: 3 moon dust/2 tears epic -> 5 moon dust/3 tears heroic 
	    table.insert(MetaUpgradeCardData.CastCount.UpgradeResourceCost, { CardUpgradePoints = 5, MixerHBoss = 3 })
	
	    -- Moon, Selene: 6 moon dust/2 pearl epic -> 9 moon dust/3 pearl heroic 
	    table.insert(MetaUpgradeCardData.SorceryRegenUpgrade.UpgradeResourceCost, { CardUpgradePoints = 9, MixerGBoss = 3 })
	
	    -- Furies, Megaera, Alecto, & Tisiphone: 3 moon dust/1 cinder epic -> 5 moon dust/2 cinder heroic 
	    table.insert(MetaUpgradeCardData.CastBuff.UpgradeResourceCost, { CardUpgradePoints = 5, MixerFBoss = 2 })
	
	    -- Persistence, Prometheus: 4 moon dust/1 feather epic -> 6 moon dust/2 feather heroic 
	    table.insert(MetaUpgradeCardData.BonusHealth.UpgradeResourceCost, { CardUpgradePoints = 6, MixerPBoss = 2 })
	
	    -- Messenger, Hermes: 3 moon dust/1 feather epic -> 5 moon dust/2 feather heroic 
	    table.insert(MetaUpgradeCardData.BonusDodge.UpgradeResourceCost, { CardUpgradePoints = 5, MixerPBoss = 2 })
	
	    -- Unseen, Hecate: 10 moon dust/2 tears epic -> 15 moon dust/3 tears heroic 
	    table.insert(MetaUpgradeCardData.ManaOverTime.UpgradeResourceCost, { CardUpgradePoints = 15, MixerHBoss = 3 })
		
	    -- Night, Nyx: 4 moon dust/1 darkness epic -> 6 moon dust/2 darkness heroic 
	    table.insert(MetaUpgradeCardData.MagicCrit.UpgradeResourceCost, { CardUpgradePoints = 6, Mixer6Common = 2 })
	
	    -- Swift Runner, Achilles: 3 moon dust/1 cinder epic -> 5 moon dust/2 cinder heroic 
	    table.insert(MetaUpgradeCardData.SprintShield.UpgradeResourceCost, { CardUpgradePoints = 5, MixerFBoss = 2 })
	    
		-- Death, Thanatos: 12 moon dust/1 star dust epic -> 18 moon dust/2 star dust heroic
	    table.insert(MetaUpgradeCardData.LastStand.UpgradeResourceCost, { CardUpgradePoints = 18, Mixer5Common = 2 })
	  
	    -- Centaur, Chiron: 6 moon dust/1 g.apple epic -> 9 moon dust/2 g.apple heroic
	    table.insert(MetaUpgradeCardData.MaxHealthPerRoom.UpgradeResourceCost, { CardUpgradePoints = 9, MixerOBoss = 2 })
	
	    -- Origination, Chaos: 10 moon dust/1 shadow epic -> 15 moon dust/2 shadow heroic 
	    table.insert(MetaUpgradeCardData.StatusVulnerability.UpgradeResourceCost, { CardUpgradePoints = 15, MixerShadow = 2 })
	
	    -- Lovers, Orpheus & Eurydice: 5 moon dust/2 tears epic -> 8 moon dust/3 tears heroic
	    table.insert(MetaUpgradeCardData.ChanneledBlock.UpgradeResourceCost, { CardUpgradePoints = 8, MixerHBoss = 3 })
	   
	    -- The Enchantress, Circe: 5 moon dust/2 pearl epic -> 8 moon dust/3 pearl heroic 
	    table.insert(MetaUpgradeCardData.DoorReroll.UpgradeResourceCost, { CardUpgradePoints = 8, MixerGBoss = 3 })
	   
	    -- Boatman, Charon: 12 moon dust/unsure epic -> 18 moon dust/5 obol points heroic 
	    table.insert(MetaUpgradeCardData.StartingGold.UpgradeResourceCost, { CardUpgradePoints = 18, CharonPoints = 5 })
	
	    -- Artificer, Daedalus: 5 moon dust/2 wool epic -> 8 moon dust/3 wool heroic 
	    table.insert(MetaUpgradeCardData.MetaToRunUpgrade.UpgradeResourceCost, { CardUpgradePoints = 8, MixerNBoss = 3 })
	    
		-- Excellence, Patroclus: 6 moon dust/2 wool epic -> 9 moon dust/3 wool heroic
	    table.insert(MetaUpgradeCardData.RarityBoost.UpgradeResourceCost, { CardUpgradePoints = 9, MixerNBoss = 3 })
	    
		-- Queen, Persephone: 4 moon dust/2 pearl epic -> 6 moon dust/3 pearl heroic
	    table.insert(MetaUpgradeCardData.BonusRarity.UpgradeResourceCost, { CardUpgradePoints = 6, MixerGBoss = 3 })
	    
		-- The Fates, Three Fates: 6 moon dust/2 wool epic -> 9 moon dust/3 wool heroic
	    table.insert(MetaUpgradeCardData.TradeOff.UpgradeResourceCost, { CardUpgradePoints = 9, MixerNBoss = 3 })
	    
		-- Champions, Theseus & Asterius: 10 moon dust/2 g.apple epic -> 15 moon dust/3 g.apple heroic 
	    table.insert(MetaUpgradeCardData.ScreenReroll.UpgradeResourceCost, { CardUpgradePoints = 15, MixerOBoss = 3 })
	    
		-- Strength, Heracles: 12 moon dust/2 feather epic -> 18 moon dust/3 feather heroic 
	    table.insert(MetaUpgradeCardData.LowHealthBonus.UpgradeResourceCost, { CardUpgradePoints = 18, MixerPBoss = 3 })
	    
		-- Divinity, Zeus & Hera: 10 moon dust/2 feather epic -> 15 moon dust/3 feather heroic 
	    table.insert(MetaUpgradeCardData.EpicRarityBoost.UpgradeResourceCost, { CardUpgradePoints = 15, MixerPBoss = 3 })
	    
		-- Judgment, Hades: 20 moon dust/20 f.fabric epic -> 30 moon dust/30 f.fabric heroic 
	    table.insert(MetaUpgradeCardData.CardDraw.UpgradeResourceCost, { CardUpgradePoints = 30, MetaFabric = 30 })
	else
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
	end
end)
