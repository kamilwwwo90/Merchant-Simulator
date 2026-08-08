local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local CustomerArchetypeType = require(ReplicatedStorage.Utils.Types.CustomerArchetypeType)
local Customer = require(ServerScriptService.Modules.Systems.CustomerSystem.Classes.Customer)
local ArchetypeGenerator = require(ServerScriptService.Modules.Systems.CustomerSystem.Generators.ArchetypeGenerator)
local PersonalityGenerator = require(ServerScriptService.Modules.Systems.CustomerSystem.Generators.PersonalityGenerator)
local PreferrenceGeneration = require(ServerScriptService.Modules.Systems.CustomerSystem.Generators.PreferrenceGeneration)

local CustomerModels = ReplicatedStorage.CustomerModels

local Generator = {}

type CustomerArchetype = CustomerArchetypeType.Archetype

function Generator.RandomCustomer()
    local Archetype: CustomerArchetype? = ArchetypeGenerator.RandomArchetype()
    if not Archetype then error("Archetype is nil") end

    local GoldRange: {number} = Archetype.GoldRange

    local Gold = math.random(table.unpack(GoldRange))
    local Personality = PersonalityGenerator.RandomPersonality(Archetype)
    local Preferrences = PreferrenceGeneration.RandomPreferrences(Archetype)

    local Data = {
        Model = CustomerModels[Archetype.Name]:Clone(),
        
        --Gold
        Gold = Gold,

        --Personality
        Personality = Personality,

        --[[
            Personality = {
                PriceSensitivity = Weight,
                QualityPreference = Weight,
                Patience = Weight,
            }
        ]]

        --Preferred Items
        --PreferredItems[Preferrence] = Weight 
        PreferredItems = Preferrences
    }

    local NewCustomer = Customer.New(Data)

    return NewCustomer
end

return Generator