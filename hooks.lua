function OnPossibleKill(Entity, Killer, TDI)
    if Entity:GetEntityType() == 2 then
        local StoredItems = cItems()
        Entity:GetInventory():CopyToItems(StoredItems)
        Players[Entity:GetUUID()] = {TempInventory = StoredItems}
    end
end


function OnPlayerSpawn(Player)
    local CachedPlayer = Players[Player:GetUUID()]
    if CachedPlayer then
        Player:GetInventory():AddItems(CachedPlayer.TempInventory, true)
    end
end