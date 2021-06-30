local matrix = require("matrix")
local timer = require("time")
-- Size of the grid
local n = 12

-- A table representing the initial coordinate {i,j}
local initialPosition = {9,4}

-- A table representing the final coordinate {i,j}
local finalPosition = {0,1}

-- Constant Velocity, m/s
local velocity = 2.5

local nodes = {}

table.insert(nodes, initialPosition)

local grid = matrix.createMatrix(n)
matrix.calculateRoute(initialPosition, finalPosition, nodes)

local time = timer.calculateTime(grid, nodes, velocity)
print("Total time: " .. time .. ", seconds")