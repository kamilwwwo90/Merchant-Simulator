--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ItemType = require(ReplicatedStorage.Utils.Types.ItemType)

local Potions: {ItemType.Item} = {
    HealingPotion = {
        Id = "healing_potion",
        Name = "Healing Potion",
        Category = "Potion",
        Value = 40,
    },

    ManaPotion = {
        Id = "mana_potion",
        Name = "Mana Potion",
        Category = "Potion",
        Value = 45,
    },

    SpeedPotion = {
        Id = "speed_potion",
        Name = "Speed Potion",
        Category = "Potion",
        Value = 70,
    },
}

return Potions