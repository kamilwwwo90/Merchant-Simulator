local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataService = require(script.Parent.DataService)
local Constants = require(ReplicatedStorage.Utils.Constants)
local Service = {}

function Service.AddCurrency(Amount: number, Player: Player, Currency: string)
    local Data = DataService.GetData(Player)
    if not Data then return end

    DataService.SetCurrency(Player, Currency, Amount)
end

function Service.TakeCurrency(Amount: number, Player: Player, Currency: string)
    local Data = Player
    if not Data then return end

    if Currency == Constants.CurrencyTypes.Gold then

        elseif Currency == Constants.CurrencyTypes.Rubies then

    end
end

return Service   