--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemCategories = require(ReplicatedStorage.Data.Data.ItemCategories)
local CustomerArchetypeType = require(ReplicatedStorage.Utils.Types.CustomerArchetypeType)

type CustomerArchetype = CustomerArchetypeType.Archetype

local Archetypes: {[string]: CustomerArchetype} = {
    Farmer = {
        Name = "Farmer",

        PriceSensitivity = {
            Base = 1,
            Variation = .15
        },

        QualityPreference = {
            Base = 1,
            Variation = 0.1,
        },

        Patience = {
            Base = 1.2,
            Variation = 0.4,
        },

        Preferences = {
            [ItemCategories.Resource] = {
                Name = "Resource",
                Base = 1.2,
                Variation = .2
            },
        },

        GoldRange = {50, 150},
        SpawnChance = .5
    },

    Warrior = {
        Name = "Warrior",


        PriceSensitivity = {
            Base = .8,
            Variation = .1
        },

        QualityPreference = {
            Base = 1.3,
            Variation = 0.2,
        },

        Patience = {
            Base = 0.9,
            Variation = 0.4,
        },

        Preferences = {
            [ItemCategories.Armor] = {
                Name = "Armor",
                Base = 1.4,
                Variation = .5
            },

            [ItemCategories.Weapon] = {
                Name = "Weapon",
                Base = 1.5,
                Variation = .3
            },

            [ItemCategories.Potion] = {
                Name = "Potion",
                Base = 1.1,
                Variation = .3
            },
        },

        GoldRange = {200, 600},
        SpawnChance = .3
    },

    Noble = {
        Name = "Noble",

        PriceSensitivity = {
            Base = .5,
            Variation = .1
        },

        QualityPreference = {
            Base = 1,
            Variation = 0.2,
        },

        Patience = {
            Base = .8,
            Variation = 0.3,
        },

        Preferences = {
            [ItemCategories.Luxury] = {
                Name = "Luxury",
                Base = 1.5,
                Variation = .3
            },

            [ItemCategories.Weapon] = {
                Name = "Weapon",
                Base = 1.2,
                Variation = .3
            },

            [ItemCategories.Armor] = {
                Name = "Armor",
                Base = 1.2,
                Variation = .3
            },
        },

        GoldRange = {1000, 5000},
        SpawnChance = .2,
    }
}

return Archetypes