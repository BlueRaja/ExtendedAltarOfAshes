if not ExtendedAltarOfAshes.Config.Enabled then return end

ModUtil.LoadOnce(function ()
    MetaUpgradeCostData.MetaUpgradeLevelData =
    {
		{ CostIncrease = 2, ResourceCost = { MemPointsCommon = 40 }},
		{ CostIncrease = 2, ResourceCost = { MemPointsCommon = 45 }},
		{ CostIncrease = 2, ResourceCost = { MemPointsCommon = 50 }},
		{ CostIncrease = 2, ResourceCost = { MemPointsCommon = 100 }},
		{ CostIncrease = 2, ResourceCost = { MemPointsCommon = 120 }},

		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 150 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 170 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 200 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 230 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 240 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 260 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 290 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 320 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 350 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, Mixer6Common = 1, MixerShadow = 1 }}, --30

		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 420, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 460, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 500, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 540, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 580, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 620, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 660, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 700, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 740, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 780, Mixer6Common = 1, MixerShadow = 1 }}, --40

        { CostIncrease = 1, ResourceCost = { MemPointsCommon = 820, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 860, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 900, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 940, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 980, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1020, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1060, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1100, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1150, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1200, Mixer6Common = 3, MixerShadow = 3 }}, --50

		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerFBoss = 10, Mixer6Common = 1, MixerShadow = 1 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerFBoss = 10, Mixer6Common = 2, MixerShadow = 2 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerGBoss = 10, Mixer6Common = 3, MixerShadow = 3 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerGBoss = 10, Mixer6Common = 4, MixerShadow = 4 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerHBoss = 10, Mixer6Common = 5, MixerShadow = 5 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerHBoss = 10, Mixer6Common = 6, MixerShadow = 6 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerNBoss = 10, Mixer6Common = 7, MixerShadow = 7 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerNBoss = 10, Mixer6Common = 8, MixerShadow = 8 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerOBoss = 10, Mixer6Common = 9, MixerShadow = 9 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerOBoss = 10, Mixer6Common = 10, MixerShadow = 10 }}, -- 60
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerIBoss = 25, Mixer6Common = 11, MixerShadow = 11 }},
		{ CostIncrease = 1, ResourceCost = { MemPointsCommon = 1000, MixerIBoss = 25, Mixer6Common = 12, MixerShadow = 12 }}, -- 62, max to equip all 25 cards
	}
    
    MetaUpgradeCardData.ChanneledCast.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 1 },
        { CardUpgradePoints = 3, PlantFMoly = 6 },
        { CardUpgradePoints = 5, PlantFMoly = 10, MixerIBoss = 2 },
        { CardUpgradePoints = 8, PlantFMoly = 15, MixerIBoss = 5, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.HealthRegen.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 2 },
        { CardUpgradePoints = 3, OreFSilver = 10, },
        { CardUpgradePoints = 5, OreFSilver = 12, SuperGiftPoints = 3 },
        { CardUpgradePoints = 8, OreFSilver = 14, SuperGiftPoints = 5, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.LowManaDamageBonus.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 2 },
        { CardUpgradePoints = 4, PlantGLotus = 8, },
        { CardUpgradePoints = 6, PlantGLotus = 10, FamiliarPoints = 2 },
        { CardUpgradePoints = 8, PlantGLotus = 14, FamiliarPoints = 4, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.MagicCrit.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 4 },
        { CardUpgradePoints = 8, PlantNMoss = 10 },
        { CardUpgradePoints = 10, PlantNMoss = 12, Mixer6Common = 2 },
        { CardUpgradePoints = 12, PlantNMoss = 14, Mixer6Common = 3, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.BonusDodge.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 6, MixerGBoss = 5, },
        { CardUpgradePoints = 9, MixerGBoss = 8, Mixer5Common = 1 },
        { CardUpgradePoints = 12, MixerGBoss = 10, Mixer5Common = 2, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.CastBuff.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 2 },
        { CardUpgradePoints = 4, PlantFNightshade = 10, },
        { CardUpgradePoints = 6, PlantFNightshade = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 8, PlantFNightshade = 14, WeaponPointsRare = 2, },
    }
    
    MetaUpgradeCardData.BonusHealth.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 2 },
        { CardUpgradePoints = 4, OreNBronze = 6 },
        { CardUpgradePoints = 6, OreNBronze = 10, MixerIBoss = 3 },
        { CardUpgradePoints = 8, OreNBronze = 14, MixerIBoss = 5, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.ManaOverTime.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 5, PlantGCattail = 10, },
        { CardUpgradePoints = 8, PlantGCattail = 14, WeaponPointsRare = 1 },
        { CardUpgradePoints = 10, PlantGCattail = 18, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.SorceryRegenUpgrade.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 5 },
        { CardUpgradePoints = 10, PlantHMyrtle = 8, },
        { CardUpgradePoints = 13, PlantHMyrtle = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 16, PlantHMyrtle = 16, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.ChanneledBlock.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3, },
        { CardUpgradePoints = 6, OreGLime = 15 },
        { CardUpgradePoints = 9, OreGLime = 18, GiftPointsRare = 3 },
        { CardUpgradePoints = 12, OreGLime = 20, GiftPointsRare = 5, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.SprintShield.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 1, },
        { CardUpgradePoints = 3, MixerNBoss = 3 },
        { CardUpgradePoints = 6, MixerNBoss = 5, WeaponPointsRare = 1 },
        { CardUpgradePoints = 9, MixerNBoss = 8, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.LastStand.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 6 },
        { CardUpgradePoints = 12, Mixer5Common = 1 },
        { CardUpgradePoints = 18, Mixer5Common = 2, MixerIBoss = 5 },
        -- { CardUpgradePoints = 24, Mixer5Common = 3, MixerIBoss = 10, WeaponPointsRare = 3 }, UNTIL FIX
    }
    
    MetaUpgradeCardData.MaxHealthPerRoom.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3, },
        { CardUpgradePoints = 6, OreHGlassrock = 8 },
        { CardUpgradePoints = 9, OreHGlassrock = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 12, OreHGlassrock = 16, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.CastCount.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 5, PlantNGarlic = 8, },
        { CardUpgradePoints = 8, PlantNGarlic = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 10, PlantNGarlic = 16, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.LowHealthBonus.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 8, OreOIron = 8 },
        { CardUpgradePoints = 10, OreOIron = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 12, OreOIron = 16, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.DoorReroll.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 6, MetaFabric = 12 },
        { CardUpgradePoints = 9, MetaFabric = 18, WeaponPointsRare = 1 },
        { CardUpgradePoints = 12, MetaFabric = 24, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.StartingGold.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 6 },
        { CardUpgradePoints = 12, OreIMarble = 10 },
        { CardUpgradePoints = 18, OreIMarble = 15, CharonPoints = 5 },
        { CardUpgradePoints = 24, OreIMarble = 20, CharonPoints = 10, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.StatusVulnerability.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 5, PlantOMandrake = 3 },
        { CardUpgradePoints = 10, PlantOMandrake = 6, Mixer5Common = 3 },
        { CardUpgradePoints = 15, PlantOMandrake = 12, Mixer5Common = 5, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.RarityBoost.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 6, MetaFabric = 6 },
        { CardUpgradePoints = 12, MetaFabric = 12, MetaCardPointsCommon = 250, WeaponPointsRare = 1 },
        { CardUpgradePoints = 15, MetaFabric = 18, MetaCardPointsCommon = 500, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.BonusRarity.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 2 },
        { CardUpgradePoints = 4, MetaFabric = 12, },
        { CardUpgradePoints = 6, MetaFabric = 24, WeaponPointsRare = 1 },
        { CardUpgradePoints = 8, MetaFabric = 30, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.TradeOff.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 5, MixerIBoss = 3, },
        { CardUpgradePoints = 8, MixerIBoss = 6, },
        { CardUpgradePoints = 10, MixerIBoss = 10, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.ScreenReroll.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 5 },
        { CardUpgradePoints = 10, PlantIShaderot = 9, },
        { CardUpgradePoints = 12, PlantIShaderot = 12, WeaponPointsRare = 1 },
        { CardUpgradePoints = 14, PlantIShaderot = 18, WeaponPointsRare = 2 },
    }
    
    MetaUpgradeCardData.MetaToRunUpgrade.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 8 },
        { CardUpgradePoints = 15, PlantIPoppy = 8 },
        { CardUpgradePoints = 18, PlantIPoppy = 10, WeaponPointsRare = 1 },
        -- { CardUpgradePoints = 20, PlantIPoppy = 12, WeaponPointsRare = 2 }, UNTIL FIX
    }
    
    MetaUpgradeCardData.EpicRarityBoost.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 3 },
        { CardUpgradePoints = 5, MixerHBoss = 5, },
        { CardUpgradePoints = 10, MixerHBoss = 8, },
        { CardUpgradePoints = 15, MixerHBoss = 10, WeaponPointsRare = 1 },
    }
    
    MetaUpgradeCardData.CardDraw.UpgradeResourceCost = 
    {
        { CardUpgradePoints = 10, PlantChaosThalamus = 2, MetaFabric = 10, MixerIBoss = 1 },
        { CardUpgradePoints = 20, PlantChaosThalamus = 4, MetaFabric = 25, MixerIBoss = 3 },
        { CardUpgradePoints = 20, PlantChaosThalamus = 6, MetaFabric = 25, MixerIBoss = 5 },
        { CardUpgradePoints = 20, PlantChaosThalamus = 8, MetaFabric = 25, MixerIBoss = 8 },
    }

    for i = 31, 62 do
        ScreenData.MetaUpgradeCardLayout.BonePositions[i] = ScreenData.MetaUpgradeCardLayout.BonePositions[30]
    end
end)


