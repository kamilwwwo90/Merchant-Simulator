--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Items: {ItemType.Item} = {
    Wood = {
        Id = "wood",
        Name = "Wood",
        Category = "Resource",
        Value = 2,
        Stackable = true,
    },

    Stone = {
        Id = "stone",
        Name = "Stone",
        Category = "Resource",
        Value = 2,
        Stackable = true,
    },

    Coal = {
        Id = "coal",
        Name = "Coal",
        Category = "Resource",
        Value = 3,
        Stackable = true,
    },

    IronOre = {
        Id = "iron_ore",
        Name = "Iron Ore",
        Category = "Resource",
        Value = 5,
        Stackable = true,
    },

    Leather = {
        Id = "leather",
        Name = "Leather",
        Category = "Resource",
        Value = 4,
        Stackable = true,
    },

    Herbs = {
        Id = "herbs",
        Name = "Herbs",
        Category = "Resource",
        Value = 3,
        Stackable = true,
    },
}

return Items