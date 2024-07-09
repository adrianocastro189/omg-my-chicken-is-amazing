--[[
The AbstractChickenFinderRepository implementation for the Retail client.
]]
local RetailChickenFinderRepository = {}
RetailChickenFinderRepository.__index = RetailChickenFinderRepository
    AmazingChicken:addChildClass('Omg/ChickenFinderRepository', RetailChickenFinderRepository, 'Omg/AbstractChickenFinderRepository', {
        -- the classic client here refers to the Cataclysm client, not Classic Era
        AmazingChicken.environment.constants.CLIENT_CLASSIC,
        AmazingChicken.environment.constants.CLIENT_RETAIL,
    })

    --[[
    RetailChickenFinderRepository constructor.
    ]]
    function RetailChickenFinderRepository.__construct()
        local instance = setmetatable({}, RetailChickenFinderRepository)

        instance.petJournal = AmazingChicken:new('PetJournal')
        instance.westfallChickenSpeciesId = 84

        return instance
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