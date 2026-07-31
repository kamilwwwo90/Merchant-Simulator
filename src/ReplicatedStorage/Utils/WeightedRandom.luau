local function WeightedRandom(Weights)
    local TotalWeight = 0

    for _, weight in Weights do
        TotalWeight += weight
    end

    local Random = math.random(1, TotalWeight)
    local Counter = 0

    for item, weight in Weights do
        Counter += weight
        if Random <= Counter then
            return item
        end
    end
end

return WeightedRandom()