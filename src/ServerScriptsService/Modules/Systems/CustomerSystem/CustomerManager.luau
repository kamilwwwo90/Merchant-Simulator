local Manager = {}

Manager.ActiveNPCs = {}

function Manager.AddNPC(npcData)
    Manager.ActiveNPCs[npcData.Id] = npcData
end

function Manager.DeleteNPC(npcData)
    if not Manager.ActiveNPCs[npcData.Id] then return end

    Manager.ActiveNPCs[npcData.Id] = nil
end

return Manager