local ServerScriptService = game:GetService("ServerScriptService")
local WorldPositions = require(ServerScriptService.Modules.Systems.CustomerSystem.Data.WorldPositions)
local StateMachine = {}

StateMachine.__index = StateMachine

function StateMachine.New(Data)
    print(Data)

    local self = setmetatable({
        ID = Data.Id,
        Model = Data.Model
    }, StateMachine)

    self:WalkToShop()

    return self
end

function StateMachine:WalkToShop()
    local Model: Model = self.Model
    local Humanoid = Model:FindFirstChildOfClass("Humanoid")

    Humanoid:MoveTo(WorldPositions.Shop)
end

function StateMachine:ChooseItem()

end

function StateMachine:Stop()
    self.Model:Destroy()
end

return StateMachine