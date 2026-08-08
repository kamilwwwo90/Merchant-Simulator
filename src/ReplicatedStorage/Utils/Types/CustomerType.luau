export type Customer = {
    Model: Model,

    Gold: number,

    PreferredItems: {[string]: number},

    Personality: {
        PriceSensitivity: number,
        QualityPreference: number,
        Patience: number,
    },

    Id: string,
}

return {}