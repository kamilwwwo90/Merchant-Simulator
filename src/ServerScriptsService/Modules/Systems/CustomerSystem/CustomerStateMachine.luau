local StateMachine = {}

StateMachine.__index = StateMachine

local function WalkToBooth()
    
end

function StateMachine.New(Data)
    local self = setmetatable({
        ID = Data.Id,
        Model = Data.Model
    }, StateMachine)

    return self
end

return StateMachine