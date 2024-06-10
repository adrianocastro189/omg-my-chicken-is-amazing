--[[
The AbstractChickenFinderRepository implementation for the Retail client.
]]
local RetailChickenFinderRepository = {}
RetailChickenFinderRepository.__index = RetailChickenFinderRepository
    -- RetailChickenFinderRepository inherits from AbstractChickenFinderRepository
    setmetatable(RetailChickenFinderRepository, AmazingChicken.__:getClass('OmgAbstractChickenFinderRepository'))
    AmazingChicken.__:addClass('OmgRetailChickenFinderRepository', RetailChickenFinderRepository, AmazingChicken.__.environment.constants.TEST_SUITE)
    AmazingChicken.__:addClass('OmgChickenFinderRepository', RetailChickenFinderRepository, {
        -- the classic client here refers to the Cataclysm client, not Classic Era
        AmazingChicken.__.environment.constants.CLIENT_CLASSIC,
        AmazingChicken.__.environment.constants.CLIENT_RETAIL,
    })

    --[[
    RetailChickenFinderRepository constructor.
    ]]
    function RetailChickenFinderRepository.__construct()
        return setmetatable({}, RetailChickenFinderRepository)
    end

    --[[
    @inheritDoc
    @codeCoverageIgnore
    ]]
    function RetailChickenFinderRepository:playerHasChicken()
        error('To be implemented in future versions')
    end
-- end of RetailChickenFinderRepository