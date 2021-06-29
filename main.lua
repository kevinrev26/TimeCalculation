local matrix = require("matrix")


-- A table representing the initial coordinate {i,j}
local initialPosition = {0,4}

-- A table representing the final coordinate {i,j}
local finalPosition = {3,0}

-- Size of the grid
local n = 5

local grid = matrix.createMatrix(n)

matrix.calculateRoute(initialPosition, finalPosition)