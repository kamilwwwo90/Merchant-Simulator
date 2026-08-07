local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local RandomVariation = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomVariation)
local CustomerArchetypeType = require(ReplicatedStorage.Utils.Types.CustomerArchetypeType)
local Generator = {}

type CustomerArchetype = CustomerArchetypeType.Archetype

function Generator.RandomPreferrences(archetype: CustomerArchetype)
    local Preferrences = {}

    for _, preference in archetype.Preferences do
        local Name = preference.Name
        local Base = preference.Base
        local Variation = preference.Variation
        
        local Num = Base + RandomVariation(Variation)
        Preferrences[Name] = Num
    end
    
    return Preferrences
end

return Generator