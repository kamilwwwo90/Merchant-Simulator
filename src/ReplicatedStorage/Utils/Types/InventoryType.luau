export type InventorySlot = {

    ItemId: string,

    Amount: number,
}

export type Inventory = {

    Capacity: number,

    Slots: {InventorySlot},
}

return {}