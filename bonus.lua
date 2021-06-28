-- bonus table
local bonus = {}

-- Initialize all types of bonus: Weapons, consumables, others.
local spear = {}
spear["attack"] = 10
spear["defense"] = 1
spear["hp"] = 0

bonus["spear"] = spear

local potion = {}
potion["attack"] = 0
potion["defense"] = 0
potion["hp"] = 2

bonus["potion"] = potion

return bonus
