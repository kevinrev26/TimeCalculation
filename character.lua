-- Table to represent character.

local character = {}

-- Constructing the hero or enemy character.
-- the hero parameter will be set to true or false.

function character.init(name, attack, defense, hp, hero)
    local player = {}
    player["name"] = name
    player["attack"] = attack
    player["defense"] = defense
    player["hp"] = hp
    player["hero"] = hero
    return player
 end

function character.attachBonus(player, bonus) 
    player["attack"]  = bonus
end

return