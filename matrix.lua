-- Indexes for bonuses: 
-- 0 = normal path. 0%
-- 1 = water path: -25%
-- 2 = sand path = -20%
-- 3 = grass path = +10%

local bonusFactor = 0.5

local generator  = require("tilegenerator")


local matrix = {}

-- Creates a matrix, initial 0 are the defaults.
function matrix.createMatrix(n)

    local grid = {}

    -- init matrix
    for i = 0, n-1 do
        grid[i] = {}
        for j = 0, n-1 do
            grid[i][j] = 0
        end
    end
    
    -- When all the 0 are positioned, new elements are added
    -- adjusted by the bonus factor
    for i = 0, n*n*bonusFactor, 1 do
        local bonuxIndex = math.random(1,3)
        local tile = generator.generate(n)
        local row = tile["i"]
        local column = tile["j"]

        grid[row][column] = bonuxIndex
    end

    return grid
end

return matrix