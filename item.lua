-- items table
-- name, weight
-- Rarity
-- Common: 0.5
-- Uncommon: 0.25
-- Rare: 0.15
-- Legendary: 0.05

local Nitems = 6


local items = {}
items[0.5] = { "Shield", "Wood", "Metal", "Bullets", "Guardians Horn", "Relic Shield"}
items[0.25] = { "Shotgun", "Mango", "Bottle of water", "Axe" , "Lost Chapter", "Zeal"}
items[0.15] = { "Gauntlet", "Crown", "Sword", "Cloak", "Phantom Dancer", "The Collector" }
items[0.05] = { "Shadow Amulet", "Ghost Scepter", "Boots of Speed", "Soul Ring", "Trinity Force", "Moonstone"}

function items.getItem(rarity)
    -- Should be a valid rarity
    -- TODO validate rarity
    local items = items[rarity]
    return items[math.random(Nitems)]
end


return items
