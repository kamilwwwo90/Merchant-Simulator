local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ServerScriptService = game:GetService("ServerScriptService")
local RandomCustomer = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomCustomer)
local CustomerManager = require(script.Parent.CustomerManager)
local Constants = require(ReplicatedStorage.Utils.Constants)

local Service = {}

RunService.Heartbeat:Connect(function()
    task.spawn(function()
            task.wait(Constants.CustomerSpawnTimer)

            local RandomCustomer = RandomCustomer()

            CustomerManager.AddNPC(RandomCustomer)
    end)
end)

return Service