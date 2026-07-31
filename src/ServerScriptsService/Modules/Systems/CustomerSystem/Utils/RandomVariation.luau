-- RandomVariation()
return function(range)
    local a = math.random()
    local b = math.random()

    local centered = (a + b) / 2

    return (centered - 0.5) * 2 * range
end