local DataService = {}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ServerScriptService = game:GetService("ServerScriptService")
local profilestore = require(ServerScriptService.ServerPackages.profilestore)
local DefaultData = require(ReplicatedStorage.Data.DefaultData)

local Key = "PLAYER_DATA_V1"

if RunService:IsStudio() then
    Key = "Test_PLAYER_DATA_V1"
end

local PlayerStore = profilestore.New(Key, DefaultData)
local Profiles = {}

local function Init(Player: Player)
    local Profile = PlayerStore:StartSessionAsync(`{Player.UserId}`, {Cancel = function() return Player.Parent ~= Players end,})

    if Profile then
        
        Profile:AddUserId(Player.UserId)
        Profile:Reconcile()

        Profile.OnSessionEnd:Connect(function()
            Profiles[Player] = nil
        end)

        if Player.Parent == Players then
            Profiles[Player] = Profile
            print(Profile.Data)
        end

    else
        Player:Kick("Data failed to load")
    end
end

function DataService.GetData(Player: Player)
    local Profile = Profiles[Player]
    if not Profile then return end

    local Data = Profile.Data
    return Data
end

function DataService.SetCurrency(Player: Player, Currency: string, Amount: number)
    local Profile = Profiles[Player]
    if not Profile then return end 

    local Data = Profile.Data
    Data[Currency] -= Amount
end

for _, player in Players:GetPlayers() do
   task.spawn(Init(player))
end

Players.PlayerAdded:Connect(Init)

Players.PlayerRemoving:Connect(function(player)
   local profile = Profiles[player]
   if profile ~= nil then
      profile:EndSession()
   end
end)

return DataService