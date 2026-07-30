local ItemType = require(script.Parent.ItemType)

export type Shelf = {

    Id: string,

    Capacity: number,

    Items: {ItemType.Item},

    Position: Vector3,
}

return {}