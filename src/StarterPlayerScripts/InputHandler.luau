local UserInputService = game:GetService("UserInputService")


UserInputService.InputBegan:Connect(function(Input: InputObject, Gpe: boolean)
    if Gpe then return end
    
end)