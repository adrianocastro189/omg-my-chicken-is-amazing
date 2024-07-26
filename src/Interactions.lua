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
    Creates an interval instance.

    This method is here to make it easier to mock the interval creation.
    ]]
    function Interactions:createInterval()
        return AmazingChicken:new('Interval')
    end

    --[[
    Express the player's amazement with the Westfall chicken.
    ]]
    function Interactions:exclaim()
        AmazingChicken.output:yell('OMG! My Chicken is amazing!')
    end

    --[[
    Laments the fact that the player's Westfall chicken is not summoned.
    ]]
    function Interactions:lamentChickenAbsence()
        AmazingChicken.output:say('Oh, I wish my Westfall chicken were here with me...')
    end

    --[[
    Laments the fact that the player doesn't have a Westfall chicken.
    ]]
    function Interactions:lamentLackOfChicken()
        AmazingChicken.output:say('Oh, I wish I had a Westfall chicken...')
    end

    --[[
    May exclaim if the player's Westfall chicken is summoned.
    ]]
    function Interactions:maybeExclaim()
        if AmazingChicken.chickenFinderRepository:isChickenSummoned() then
            self:exclaim()
        end
    end

    --[[
    May lament something about the player's Westfall chicken if the player
    doesn't have one or if it's not summoned.
    ]]
    function Interactions:maybeLament()
        local repository = AmazingChicken.chickenFinderRepository
        
        if not repository:playerHasChicken() then
            self:lamentLackOfChicken()
            return
        end

        if not repository:isChickenSummoned() then
            self:lamentChickenAbsence()
            return
        end
    end

    --[[
    May lament something about the player's Westfall chicken.
    ]]
    function Interactions:randomlyLament()
        if self:randomNumber() <= 0.1 then
            self:maybeLament()
        end
    end

    --[[
    Generates a random number, encapsulated here in a method to easy on
    mocking the results.

    @treturn number
    ]]
    function Interactions:randomNumber()
        return math.random()
    end

    --[[
    Registers an interval instance to periodically trigger interactions.

    @treturn self
    ]]
    function Interactions:registerInterval()
        self:createInterval()
            :setCallback(function () self:randomlyLament() end)
            :setSeconds(60)
            :start()
        
        return self
    end
-- end of Interactions