--[[
The AbstractChickenFinderRepository implementation for the Classic Era client.
]]
local ClassicEraChickenFinderRepository = {}
ClassicEraChickenFinderRepository.__index = ClassicEraChickenFinderRepository
    AmazingChicken.__:addChildClass('Omg/ChickenFinderRepository', ClassicEraChickenFinderRepository, 'Omg/AbstractChickenFinderRepository', {
        AmazingChicken.__.environment.constants.TEST_SUITE,
        AmazingChicken.__.environment.constants.CLIENT_CLASSIC_ERA,
    })

    --[[
    ClassicEraChickenFinderRepository constructor.
    ]]
    function ClassicEraChickenFinderRepository.__construct()
        return setmetatable({}, ClassicEraChickenFinderRepository)
    end

    --[[
    @inheritDoc
    @codeCoverageIgnore
    ]]
    function ClassicEraChickenFinderRepository:playerHasChicken()
        -- https://www.wowhead.com/classic/item=11110/chicken-egg
        return AmazingChicken.__.playerInventory:hasItem(11110)
    end
-- end of ClassicEraChickenFinderRepository