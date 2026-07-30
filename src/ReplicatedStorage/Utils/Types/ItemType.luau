local Type = {}

export type Item = {
    Id: string,
    Name: string,
    Description: string,

    Category: string,

    Rarity: string,

    Value: number,

    Stackable: boolean,

    MaxStack: number,

    Icon: string,

    Model: Model?,
}

return Type