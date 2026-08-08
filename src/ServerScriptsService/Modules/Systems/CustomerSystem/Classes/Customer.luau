local HttpService = game:GetService("HttpService")

local Customer = {}

function Customer.New(Data)
    local self = setmetatable({
        Model = Data.Model,

        Gold = Data.Gold,
        Personality = Data.Personality,
        Patience = Data.Patience,
        PreferredItems = Data.PreferredItems,

        Id = HttpService:GenerateGUID(false)
    }, Customer)

    return self
end

return Customer