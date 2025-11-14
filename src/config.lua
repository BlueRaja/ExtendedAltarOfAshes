local config = {
    Enabled = true,
    AddLegendaryArcana = true,
    MaxGrasp = 56,
}
local description = {
    Enabled = "Enable to activate the mod. Set to false to deactivate the mod.",
    AddLegendaryArcana = "If true, both heroic and legendary upgrades will be added to arcana. If false, only heroic upgrades will be added.",
    MaxGrasp = "The maximum number of grasp points that can be unlocked. The default is 56, which is enough to unlock all arcana.",
}
ExtendedAltarOfAshes.Config = config 
return config, description
