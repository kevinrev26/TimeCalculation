local generator = {}

function generator.generate(n)
    local tile = {}
    tile["i"] = math.random(0,n-1)
    tile["j"] = math.random(0,n-1)
    return tile
end

return generator