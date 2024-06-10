--[[
The AbstractChickenFinderRepository implementation for the Classic Era client.
]]
local ClassicEraChickenFinderRepository = {}
ClassicEraChickenFinderRepository.__index = ClassicEraChickenFinderRepository
    -- ClassicEraChickenFinderRepository inherits from AbstractChickenFinderRepository
    setmetatable(ClassicEraChickenFinderRepository, AmazingChicken.__:getClass('OmgAbstractChickenFinderRepository'))
    AmazingChicken.__:addClass('OmgClassicEraChickenFinderRepository', ClassicEraChickenFinderRepository, AmazingChicken.__.environment.constants.TEST_SUITE)
    AmazingChicken.__:addClass('OmgChickenFinderRepository', ClassicEraChickenFinderRepository, {
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