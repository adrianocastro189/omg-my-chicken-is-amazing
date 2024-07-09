--[[
This class is responsible for triggering player interactions.

Interactions can be something the player says, reacts to, etc. Anything that's
a result of the Westfall chicken status.
]]
local Interactions = {}
    Interactions.__index = Interactions
    AmazingChicken:addClass('Omg/Interactions', Interactions)

    --[[--
    Interactions constructor.
    ]]
    function Interactions.__construct()
        return setmetatable({}, Interactions)
    end
-- end of Interactions