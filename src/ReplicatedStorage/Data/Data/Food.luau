--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Food: {ItemType.Item} = {
    Bread = {
        Id = "bread",
        Name = "Bread",
        Category = "Food",
        Value = 8,
    },

    Apple = {
        Id = "apple",
        Name = "Apple",
        Category = "Food",
        Value = 5,
    },

    Cheese = {
        Id = "cheese",
        Name = "Cheese",
        Category = "Food",
        Value = 12,
    },
}

return Food