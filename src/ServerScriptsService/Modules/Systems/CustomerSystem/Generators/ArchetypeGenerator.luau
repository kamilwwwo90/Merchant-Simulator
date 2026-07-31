local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local CustomerArchetypes = require(ServerScriptService.Modules.Systems.CustomerSystem.Data.CustomerArchetypes)
local Constants = require(ReplicatedStorage.Utils.Constants)
local CustomerArchetypeType = require(ReplicatedStorage.Utils.Types.CustomerArchetypeType)
local WeightedRandom = require(ReplicatedStorage.Utils.WeightedRandom)

local Generator = {}

type CustomerArchetype = CustomerArchetypeType.Archetype

function Generator.RandomArchetype(): CustomerArchetype?
    local Weights = Constants.CustomerArchetypeWeights
    local RandomArchetype: string = WeightedRandom(Weights)

    for _, Archetype in CustomerArchetypes do
        if Archetype.Name == RandomArchetype then
            return Archetype
        end
    end

    return nil -- if there are no mathching archetypes for the random archetype.
end

return Generator