local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local RandomVariation = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomVariation)
local CustomerArchetypeType = require(ReplicatedStorage.Utils.Types.CustomerArchetypeType)
local Generator = {}

type CustomerArchetype = CustomerArchetypeType.Archetype

function Generator.RandomPreferrences(archetype: CustomerArchetype)
    local Preferrences = {}

    for _, preferrence in archetype.Preferrences do
        local Base = preferrence.Base
        local Variation = preferrence.Variation

        local Num = Base + RandomVariation(Variation)
        Preferrences[preferrence] = Num
    end
    
    return Preferrences
end

return Generator