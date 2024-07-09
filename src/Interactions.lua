--[[
This class is responsible for triggering player interactions.

Interactions can be something the player says, reacts to, etc. Anything that's
a result of the Westfall chicken status.
]]
local Interactions = {}
    Interactions.__index = Interactions
    AmazingChicken:addClass('Omg/Interactions', Interactions)

    --[[
    Interactions constructor.
    ]]
    function Interactions.__construct()
        return setmetatable({}, Interactions)
    end

    --[[
    Laments the fact that the player's Westfall chicken is not summoned.
    ]]
    function Interactions:lamentChickenAbsence()
        AmazingChicken.output:say('Oh, I wish my Westfall chicken was here with me...')
    end

    --[[
    Laments the fact that the player doesn't have a Westfall chicken.
    ]]
    function Interactions:lamentLackOfChicken()
        AmazingChicken.output:say('Oh, I wish I had a Westfall chicken...')
    end
-- end of Interactions