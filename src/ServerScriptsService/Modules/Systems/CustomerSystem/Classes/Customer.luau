local HttpService = game:GetService("HttpService")
local ServerScriptService = game:GetService("ServerScriptService")
local CustomerStates = require(ServerScriptService.Modules.Systems.CustomerSystem.Data.CustomerStates)

local Customer = {}

function Customer.New(Data)
    local self = setmetatable({

        Gold = Data.Gold,
        Personality = Data.Personality,

        Patience = Data.Patience,

        PreferredItems = {Data.PreferredItems},

        Id = HttpService:GenerateGUID(false),
        State = CustomerStates.Wandering
    }, Customer)

    return self
end

return Customer