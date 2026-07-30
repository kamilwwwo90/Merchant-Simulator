--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Materials: {ItemType.Item} = {
    Planks = {
        Id = "planks",
        Name = "Planks",
        Category = "Material",
        Value = 6,
        Stackable = true,
    },

    IronBar = {
        Id = "iron_bar",
        Name = "Iron Bar",
        Category = "Material",
        Value = 12,
        Stackable = true,
    },

    LeatherStrips = {
        Id = "leather_strips",
        Name = "Leather Strips",
        Category = "Material",
        Value = 8,
        Stackable = true,
    },

    Bottle = {
        Id = "bottle",
        Name = "Glass Bottle",
        Category = "Material",
        Value = 4,
        Stackable = true,
    },
}

return Materials