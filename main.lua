-- Global Variables
PLUGIN = nil
Players = {}

function Initialize(Plugin)
    Plugin:SetName("WorldHelper")
    Plugin:SetVersion(1)

    -- Commands
    cPluginManager.BindCommand("/keepInventory", "worldhelper.keepinventory", ToggleKeepInventory, " - Toggle keep inventory")

    -- Hooks
    cPluginManager.AddHook(cPluginManager.HOOK_KILLING, OnPossibleKill)
    cPluginManager.AddHook(cPluginManager.HOOK_PLAYER_SPAWNED, OnPlayerSpawn)

    PLUGIN = Plugin

    LOG("Initialised "..Plugin:GetName().." v."..Plugin:GetVersion())
    return true
end

function OnDisable()
    LOG(PLUGIN:GetName().." is disabled")
end