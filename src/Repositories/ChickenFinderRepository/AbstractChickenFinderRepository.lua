--[[
This abstraction must be implemented to provide ways to check whether a
player is able to summon a Westfall chicken or not.

It was created as an abstract class given that Classic and Retail versions
handle companion pets differently. In Classic, the player must have the
chicken in their inventory, while in Retail, the player must have the
chicken in their pet journal.

The implementations must be registered for their respective client versions.
]]
local AbstractChickenFinderRepository = {}
    AbstractChickenFinderRepository.__index = AbstractChickenFinderRepository

    --[[
    AbstractChickenFinderRepository constructor.
    ]]
    function AbstractChickenFinderRepository.__construct()
        return setmetatable({}, AbstractChickenFinderRepository)
    end

    --[[
    Determines whether the player has the Westfall chicken or not.

    @treturn boolean
    ]]
    function AbstractChickenFinderRepository:playerHasChicken()
        error('This is an abstract method and should be implemented by this class inheritances')
    end
-- end of AbstractChickenFinderRepository

-- allows this class to be extended by registering it to the factory
AmazingChicken:addAbstractClass('Omg/AbstractChickenFinderRepository', AbstractChickenFinderRepository)