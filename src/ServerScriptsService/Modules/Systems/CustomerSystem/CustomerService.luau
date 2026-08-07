local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ServerScriptService = game:GetService("ServerScriptService")
local RandomNPC = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomNPC)
local CustomerManager = require(script.Parent.CustomerManager)
local Constants = require(ReplicatedStorage.Utils.Constants)

local SpawningLoopTask

local Service = {}



RunService.Heartbeat:Connect(function()
    if not SpawningLoopTask then
        SpawningLoopTask = task.spawn(function()
            local RandomNPC = RandomNPC()

            CustomerManager.AddNPC(RandomNPC)

            print(RandomNPC)

            task.wait(Constants.CustomerSpawnTimer)
            SpawningLoopTask = nil
        end)
    end
end)

return Service