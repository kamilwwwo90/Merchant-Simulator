-- Clamp(base, ranges)
return function(base: number, ranges)
    return math.clamp(base, ranges.Min, ranges.Max)
end