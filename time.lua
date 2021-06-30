-- Assuming 1 unit (meters) per tile.
-- Indexes for bonuses: 
-- 0 = normal path. 0%
-- 1 = water path: -25%
-- 2 = sand path = -20%
-- 3 = grass path = +10%

local bonuses = {}

bonuses[0] = 0
bonuses[1] = -0.25
bonuses[2] = -0.20
bonuses[3] = 0.1

local time = {}

function time.calculateTime(grid, nodes, velocity)

    local numberOfTiles = 0
    local accumulatedSpeed = 0
    -- indexing
    local x = 1
    local y = 2
    -- asumming total time as the sume of the time per second.
    for k,value in pairs(nodes) do
        numberOfTiles = numberOfTiles +1
        local bonuxIndex = grid[value[x]][value[y]]
        local factor = bonuses[bonuxIndex]
        print("Factor: ", factor)        
        accumulatedSpeed = accumulatedSpeed + velocity*(1+factor)
    end

    return accumulatedSpeed
end

return time