local matrix = require("matrix")


local grid = matrix.createMatrix(5)

for k,v in pairs(grid) do
    print("Row: ", k)
    for key, value in pairs(v) do
        print("value: ", value)
    end
end