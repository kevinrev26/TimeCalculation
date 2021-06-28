-- Imported modules
local character = require("character")
local bonus = require("bonus")

-- Manage the game state 
local game = {}



function game.init()
   
   for k,v in pairs(bonus) do
          print(k,v)
    end  
end

return game