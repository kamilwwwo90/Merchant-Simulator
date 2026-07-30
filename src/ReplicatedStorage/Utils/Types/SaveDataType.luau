local InventoryType = require(script.Parent.InventoryType)
local ShopType = require(script.Parent.ShopType)
local StatisticsType = require(script.Parent.StatisticsType)

export type SaveData = {

    Shop: ShopType.Shop,

    Inventory: InventoryType.Inventory,

    Statistics: StatisticsType.Statistics,

    Upgrades: {string},

    Quests: {string},
}

return {}