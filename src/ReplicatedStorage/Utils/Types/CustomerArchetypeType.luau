export type Archetype = {
    Name: string,

    GoldRange: {number},

    PriceSensitivity: {Base: number, Variation: number},
    QualityPreference: {Base: number, Variation: number},
    Patience: {Base: number, Variation: number},

    Preferrences: {[string]: {Base: number, Variation: number}},

    SpawnChance: number,
}

return {}