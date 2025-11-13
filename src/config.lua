local config = {
    enabled = true,
    LiteMode = {
        Enabled = false
    },
}
local description = {
    enabled = "Enable to activate the mod. Set to false to deactivate the mod. NOTE Lite Mode requires both the main mod and LiteMode toggles to be enabled.",
    LiteMode = {
        Enabled = "Enable to activate Lite Mode: 40 max grasp, maximum heroic arcana (not legendary), and better mod compatibility"
    },
}
-- ExtendedAltarOfAshes.Config = config (not needed anymore?)
return config, description
