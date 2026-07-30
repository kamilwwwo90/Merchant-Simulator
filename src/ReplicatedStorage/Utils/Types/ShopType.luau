local EmployeeType = require(script.Parent.EmployeeType)
local InventoryType = require(script.Parent.InventoryType)
local ShelfType = require(script.Parent.ShelfType)

export type Shop = {

    Gold: number,

    Reputation: number,

    Shelves: {ShelfType.Shelf},

    Employees: {EmployeeType.Employee},

    Storage: InventoryType.Inventory,
}

return {}