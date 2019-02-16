PLUGIN = nil

function Initialize(Plugin)
    Plugin:SetName("WorldHelper")
    Plugin:SetVersion(1)

    -- Hooks
    cPluginManager.AddHook(cPluginManager.HOOK_PLAYER_RIGHT_CLICK, OnPlayerRightClick)

    PLUGIN = Plugin

    LOG("Initialised "..Plugin:GetName().." v."..Plugin:GetVersion())
    return true
end

function OnDisable()
    LOG(Plugin:GetName().." is disabled")
end