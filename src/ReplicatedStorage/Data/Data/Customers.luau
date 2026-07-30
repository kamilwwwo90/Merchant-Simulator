--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CustomerType = require(ReplicatedStorage.Utils.Types.CustomerType)


local Customers: {CustomerType.Customer} = {
   Adventurer = {

    Money = 120,

    Patience = 50,

    Personality = "Frugal",

    Goals = {
        "BuyWeapon",
        "BuyPotion",
    },

    Preferences = {
        Weapon = 10,
        Potion = 7,
        Food = 2,
    },

    },

   Farmer = {
    Money = 50,

    Patience = 75,
    Personality = "",

    Goals = {
        "BuyTools",
        "BuyFood",
    },

    Preferences = {
        Tool = 5,
        Food = 2
    }

   } 
}

return Customers