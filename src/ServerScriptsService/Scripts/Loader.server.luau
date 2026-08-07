local ServerScriptService = game:GetService("ServerScriptService")
local Modules = ServerScriptService:WaitForChild("Modules")

for _, module in Modules:GetDescendants() do
    if module:IsA("ModuleScript") then
        require(module)
    end
end

