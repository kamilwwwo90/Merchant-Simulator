export type Ingredient = {

    ItemId: string,

    Amount: number,
}

export type Recipe = {

    Id: string,

    Ingredients: {Ingredient},

    Result: string,

    Amount: number,

    CraftTime: number,

    Station: string,
}

return {}