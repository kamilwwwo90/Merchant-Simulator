local RecipeType = require(script.Parent.RecipeType)

export type CraftingStation = {

    Id: string,

    Type: string,

    Queue: {RecipeType.Recipe},

    SpeedMultiplier: number,
}

return {}