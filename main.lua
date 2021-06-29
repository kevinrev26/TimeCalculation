local generator = require("tilegenerator")

local tile = generator.generate(100)

for key, value in pairs(tile) do
    print(key, value)
end