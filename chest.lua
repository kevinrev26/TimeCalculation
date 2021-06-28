-- Chest table
local item = require("item")
local chest = {}

local function normalize(value)
    -- aweful if else...
    -- TODO Seek for better implementation
    if (value > 0.5) then
        return 0.5
    elseif (value <= 0.5 and value > 0.25) then
        return 0.25
    elseif (value <= 0.25 and value > 0.15 ) then
        return 0.15
    else
        return 0.05
    end
end

local function checkDuplicates(elem, data)
    local flag = false
    for k,v in pairs(data) do
        if (v == elem) then
            flag = true
        end
    end
    return flag
end


function chest.createChest()
    local chestItems = {}
    local numItems = math.random(4,6)
    for i=1, numItems, 1 do
        -- Check for duplicates ? Bad implementation i guess.
        local element = item.getItem(normalize(math.random()))
        while (checkDuplicates(element, chestItems)) do
            element = item.getItem(normalize(math.random()))
        end
        chestItems[i] = element
        --print(element)
    end

    return chestItems
end



return chest