--[[
The AbstractChickenFinderRepository implementation for the Retail client.
]]
local RetailChickenFinderRepository = {}
RetailChickenFinderRepository.__index = RetailChickenFinderRepository
    AmazingChicken.__:addChildClass('Omg/ChickenFinderRepository', RetailChickenFinderRepository, 'Omg/AbstractChickenFinderRepository', {
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

    @TODO: To be implemented in the future <2024.06.10>
    ]]
    function RetailChickenFinderRepository:playerHasChicken()
        error('To be implemented in future versions')
    end
-- end of RetailChickenFinderRepository