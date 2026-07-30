--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Weapons: {ItemType.Item} = {
    WoodenSword = {
        Id = "wooden_sword",
        Name = "Wooden Sword",
        Category = "Weapon",
        Value = 25,
    },

    IronSword = {
        Id = "iron_sword",
        Name = "Iron Sword",
        Category = "Weapon",
        Value = 75,
    },

    HunterBow = {
        Id = "hunter_bow",
        Name = "Hunter Bow",
        Category = "Weapon",
        Value = 65,
    },

    IronAxe = {
        Id = "iron_axe",
        Name = "Iron Axe",
        Category = "Weapon",
        Value = 70,
    },
}

return Weapons