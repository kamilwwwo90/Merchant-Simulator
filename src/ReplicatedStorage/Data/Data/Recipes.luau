--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RecipeType = require(ReplicatedStorage.Utils.Types.RecipeType)

local Recipes: {RecipeType.Recipe} = {

    Planks = {
        Ingredients = {
            {Item = "wood", Amount = 2},
        },
        Result = "planks",
    },

    IronBar = {
        Ingredients = {
            {Item = "iron_ore", Amount = 2},
            {Item = "coal", Amount = 1},
        },
        Result = "iron_bar",
    },

    WoodenSword = {
        Ingredients = {
            {Item = "planks", Amount = 2},
        },
        Result = "wooden_sword",
    },

    IronSword = {
        Ingredients = {
            {Item = "iron_bar", Amount = 3},
            {Item = "wood", Amount = 1},
        },
        Result = "iron_sword",
    },

    HealingPotion = {
        Ingredients = {
            {Item = "herbs", Amount = 2},
            {Item = "bottle", Amount = 1},
        },
        Result = "healing_potion",
    },
}

return Recipes