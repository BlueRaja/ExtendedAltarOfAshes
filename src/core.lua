if not ExtendedAltarOfAshes.Config.Enabled then return end

ModUtil.Path.Context.Wrap("UpgradeMetaUpgradeCardAction", function()
    ModUtil.Path.Wrap("ScreenCantAffordPresentation",
        function(baseFunc, screen, selectedButton, resourceCost)
            RefundMetaUpgradeCardAction(screen, selectedButton)
        end,
        ExtendedAltarOfAshes)
    ModUtil.Path.Wrap("CannotUpgradeMaxLevelMetaUpgradePresentation",
        function(baseFunc, screen, selectedButton)
            RefundMetaUpgradeCardAction(screen, selectedButton)
        end,
        ExtendedAltarOfAshes)
end, ExtendedAltarOfAshes)

ModUtil.Path.Context.Wrap("IncreaseMetaUpgradeCardLimit", function()
    ModUtil.Path.Wrap("ScreenCantAffordPresentation",
        function(baseFunc, screen, button)
            RefundMetaUpgradeLimitAction(screen, button)
        end,
        ExtendedAltarOfAshes)
    ModUtil.Path.Wrap("CannotAffordMetaUpgradeLimitPresentation",
        function(baseFunc, screen, button)
            RefundMetaUpgradeLimitAction(screen, button)
        end,
        ExtendedAltarOfAshes)
end, ExtendedAltarOfAshes)

function RefundMetaUpgradeCardAction(screen, button)
    local selectedButton = button
    local metaUpgradeName = selectedButton.CardName
    local metaUpgradeData = MetaUpgradeCardData[metaUpgradeName]

    while GetMetaUpgradeLevel(metaUpgradeName) > 3 do
        local resourceCost = metaUpgradeData.UpgradeResourceCost[GetMetaUpgradeLevel(metaUpgradeName) - 1]
        AddResources(_, resourceCost)
        DecrementTableValue(GameState.MetaUpgradeState[metaUpgradeName], "Level")
    end

    screen.ChangeMade = true
    UpdateAffordabilityStatus()

    screen.UpgradedMetaUpgrades[metaUpgradeName] = true

    -- RemoveStoreItemPin(selectedButton.CardName .. GetMetaUpgradeLevel(metaUpgradeName), { Purchase = true })
    -- RemoveStoreItemPinPresentation(selectedButton)
    UpdateMetaUpgradeCardState(screen, selectedButton)

    MouseOverUpgradeMetaUpgrade(selectedButton)

    if GetMetaUpgradeLevel(selectedButton.CardName) > 1 then
        SetAnimation({
            DestinationId = selectedButton.TypeIconId,
            Name = "CardRarityPatch",
            OffsetX = -400 /
                screen.ZoomLevel,
            OffsetY = -500 / screen.ZoomLevel
        })
        local rarity = TraitRarityData.RarityUpgradeOrder[GetMetaUpgradeLevel(selectedButton.CardName)]
        SetColor({ Id = selectedButton.TypeIconId, Color = Color["BoonPatch" .. rarity] })
    end

    for row, rowData in pairs(GameState.MetaUpgradeCardLayout) do
        for column, cardName in pairs(rowData) do
            local otherButton = screen.Components[GetMetaUpgradeKey(row, column)]
            if not MetaUpgradeAtMaxLevel(cardName) then
                local metaUpgradeData = MetaUpgradeCardData[cardName]
                local resourceCost = metaUpgradeData.UpgradeResourceCost[GetMetaUpgradeLevel(cardName)]
                if not HasResources(resourceCost) then
                    SetAlpha({ Id = otherButton.UpgradeIconId, Fraction = 0, Duration = 0.2 })
                end
            end
        end
    end
end

function RefundMetaUpgradeLimitAction(screen, button)
    while GetCurrentMetaUpgradeLimitLevel() > 15 do
        AddResources(_, MetaUpgradeCostData.MetaUpgradeLevelData[GetCurrentMetaUpgradeLimitLevel()].ResourceCost)
        DecrementTableValue(GameState, "MetaUpgradeLimitLevel", 1)
    end
    MouseOverMetaUpgradeCardLimit(button)
    UpdateAffordabilityStatus()
end
