--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Armor: {ItemType.Item} = {
    LeatherHelmet = {
        Id = "leather_helmet",
        Name = "Leather Helmet",
        Category = "Armor",
        Value = 35,
    },

    LeatherChestplate = {
        Id = "leather_chestplate",
        Name = "Leather Chestplate",
        Category = "Armor",
        Value = 60,
    },

    IronHelmet = {
        Id = "iron_helmet",
        Name = "Iron Helmet",
        Category = "Armor",
        Value = 90,
    },
}

return Armor