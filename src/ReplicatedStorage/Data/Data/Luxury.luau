--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Luxury: {ItemType.Item} = {
    GoldRing = {
        Id = "gold_ring",
        Name = "Gold Ring",
        Category = "Luxury",
        Value = 180,
    },

    RubyNecklace = {
        Id = "ruby_necklace",
        Name = "Ruby Necklace",
        Category = "Luxury",
        Value = 350,
    },
}

return Luxury