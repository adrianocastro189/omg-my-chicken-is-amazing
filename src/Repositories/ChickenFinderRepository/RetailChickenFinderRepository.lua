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
    ]]
    function RetailChickenFinderRepository:playerHasChicken()
        return self.petJournal:playerOwnsPet(self.westfallChickenSpeciesId)
    end
-- end of RetailChickenFinderRepository