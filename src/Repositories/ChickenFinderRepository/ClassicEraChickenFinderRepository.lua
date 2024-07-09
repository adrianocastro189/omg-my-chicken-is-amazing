--[[
The AbstractChickenFinderRepository implementation for the Classic Era client.
]]
local ClassicEraChickenFinderRepository = {}
ClassicEraChickenFinderRepository.__index = ClassicEraChickenFinderRepository
    AmazingChicken:addChildClass('Omg/ChickenFinderRepository', ClassicEraChickenFinderRepository, 'Omg/AbstractChickenFinderRepository', {
        AmazingChicken.environment.constants.TEST_SUITE,
        AmazingChicken.environment.constants.CLIENT_CLASSIC_ERA,
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
        return AmazingChicken.playerInventory:hasItem(11110)
    end
-- end of ClassicEraChickenFinderRepository