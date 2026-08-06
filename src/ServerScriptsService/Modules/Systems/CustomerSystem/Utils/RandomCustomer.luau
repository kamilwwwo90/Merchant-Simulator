local ServerScriptService = game:GetService("ServerScriptService")
local Customer = require(ServerScriptService.Modules.Systems.CustomerSystem.Classes.Customer)
local CustomerGenerator = require(ServerScriptService.Modules.Systems.CustomerSystem.CustomerGenerator)

return function()
    local RandomCustomer = CustomerGenerator.RandomCustomer()
    local CustomerClass = Customer.New(RandomCustomer)

    return CustomerClass
end