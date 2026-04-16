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

local EAOA_UNPACK = table.unpack or unpack

local function EAOA_GetCardLevel(metaUpgradeName)
    if not GameState or not GameState.MetaUpgradeState then
        return nil
    end

    local entry = GameState.MetaUpgradeState[metaUpgradeName]

    if type(entry) == "table" then
        return entry.Level
    elseif type(entry) == "number" then
        return entry
    end

    return nil
end

local function EAOA_SetCardLevel(metaUpgradeName, level)
    GameState.MetaUpgradeState = GameState.MetaUpgradeState or {}

    local entry = GameState.MetaUpgradeState[metaUpgradeName]

    if type(entry) ~= "table" then
        entry = { Level = type(entry) == "number" and entry or 0 }
        GameState.MetaUpgradeState[metaUpgradeName] = entry
    end

    entry.Level = level
end

local function EAOA_GetMaxModdedLevel(metaUpgradeName)
    local data = MetaUpgradeCardData and MetaUpgradeCardData[metaUpgradeName]

    if not data or not data.UpgradeResourceCost then
        return 3
    end

    return #data.UpgradeResourceCost + 1
end

function ExtendedAltarOfAshes.CapturePersistedState()
    if not GameState then
        return
    end

    GameState.EAOA_PersistedState = GameState.EAOA_PersistedState or {}
    GameState.EAOA_PersistedState.MetaUpgradeLevels = GameState.EAOA_PersistedState.MetaUpgradeLevels or {}

    local persisted = GameState.EAOA_PersistedState.MetaUpgradeLevels

    local function captureOne(name)
        local level = EAOA_GetCardLevel(name)

        if type(level) == "number" and level > 3 then
            persisted[name] = level
        else
            persisted[name] = nil
        end
    end

    if GameData and GameData.AllMetaUpgradeTraits then
        for _, name in ipairs(GameData.AllMetaUpgradeTraits) do
            captureOne(name)
        end
    elseif GameState.MetaUpgradeState then
        for name, _ in pairs(GameState.MetaUpgradeState) do
            captureOne(name)
        end
    end
end

function ExtendedAltarOfAshes.RestorePersistedState()
    if not GameState or not GameState.EAOA_PersistedState then
        return
    end

    local persisted = GameState.EAOA_PersistedState.MetaUpgradeLevels

    if persisted then
        for name, level in pairs(persisted) do
            if type(level) == "number" and level > 3 then
                local maxLevel = EAOA_GetMaxModdedLevel(name)

                if maxLevel >= level then
                    local current = EAOA_GetCardLevel(name) or 0

                    if current < level then
                        EAOA_SetCardLevel(name, level)
                    end
                end
            end
        end
    end
end

ModUtil.Path.Wrap("UpgradeMetaUpgradeCardAction", function(baseFunc, ...)
    local results = { baseFunc(...) }
    ExtendedAltarOfAshes.CapturePersistedState()
    return EAOA_UNPACK(results)
end, ExtendedAltarOfAshes)
