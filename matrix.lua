

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

function matrix.calculateRoute(pointA, pointB, nodes)
    local x = 1
    local y = 2

    local resultX = pointB[x] - pointA[x]
    local resultY = pointB[y] - pointA[y]
    
    -- There should be a better implementation
    if (resultX == 0 and resultY == 0) then
        return
    elseif (resultX > 0 and resultY == 0) then
        local newPointA = {pointA[x] + 1, pointA[y]}
        table.insert(nodes, newPointA)
        print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        --matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX == 0 and resultY > 0) then
        local newPointA = {pointA[x], pointA[y] + 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX < 0 and resultY == 0) then
        local newPointA = {pointA[x] - 1, pointA[y]}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX == 0 and resultY < 0) then
        local newPointA = {pointA[x], pointA[y] - 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX > 0 and resultY < 0) then
        local newPointA = {pointA[x] +1 , pointA[y] - 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX < 0 and resultY > 0) then
        local newPointA = {pointA[x] - 1, pointA[y] + 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    elseif (resultX < 0 and resultY < 0) then
        local newPointA = {pointA[x] - 1, pointA[y] - 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)
    else
        local newPointA = {pointA[x]+1, pointA[y] + 1}
        table.insert(nodes, newPointA)
        --print("//***/*/*")
        --print("{".. newPointA[x] .. "," .. newPointA[y] .. "}")
        matrix.calculateRoute(newPointA, pointB, nodes)     
    end

end


return matrix