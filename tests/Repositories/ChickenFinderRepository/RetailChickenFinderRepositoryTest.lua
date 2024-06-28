TestRetailChickenFinderRepository = BaseTestClass:new()
    -- helper method to instantiate the classic implementation
    function TestRetailChickenFinderRepository:instance()
        AmazingChicken.__.environment.getClientFlavor = function () return AmazingChicken.__.environment.constants.CLIENT_RETAIL end
        return AmazingChicken.__:new('Omg/ChickenFinderRepository')
    end

    -- @covers RetailChickenFinderRepository:__construct()
    function TestRetailChickenFinderRepository:testConstruct()
        local instance = self:instance()

        lu.assertNotNil(instance)
    end

    -- @covers RetailChickenFinderRepository:playerHasChicken()
    -- @TODO: To be implemented in the future <2024.06.10>
    function TestRetailChickenFinderRepository:testPlayerHasChicken()
        local instance = self:instance()

        -- abstract method
        lu.assertError(function() instance:playerHasChicken() end)
    end
-- end of TestRetailChickenFinderRepository