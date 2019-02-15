PLUGIN = nil

function Initialize(Plugin)
    Plugin:SetName("WorldEdit")
    Plugin:SetVersion(1)

    -- Hooks


    PLUGIN = Plugin

    LOG("Initialised "..Plugin:GetName().." v."..Plugin:GetVersion())
    return true
end

function OnDisable()
    LOG(Plugin:GetName().." is disabled")
end