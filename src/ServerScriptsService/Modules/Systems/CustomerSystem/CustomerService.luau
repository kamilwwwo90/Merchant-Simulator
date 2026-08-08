local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")
local CustomerStateMachine = require(script.Parent.CustomerStateMachine)
local WorldPositions = require(ServerScriptService.Modules.Systems.CustomerSystem.Data.WorldPositions)
local RandomCustomer = require(ServerScriptService.Modules.Systems.CustomerSystem.Utils.RandomCustomer)
local CustomerType = require(ReplicatedStorage.Utils.Types.CustomerType)

local Events = ReplicatedStorage.Events

local CustomerDespawned = Events.NpcDespawnedEvent
local ShopOpened = Events.ShopOpenedEvent

type CustomerType = CustomerType.Customer

local Service = {}

local function SpawnCustomer()
    local RandomCustomer: CustomerType = RandomCustomer()

    local Model = RandomCustomer.Model
    Model.Parent = workspace.Npcs
    Model:PivotTo(CFrame.new(WorldPositions.NpcSpawnPoint))

    local Statemachine = CustomerStateMachine.New(RandomCustomer)
end

ShopOpened.OnServerEvent:Connect(SpawnCustomer)
CustomerDespawned.Event:Connect(SpawnCustomer)
Players.PlayerAdded:Connect(SpawnCustomer)

return Service