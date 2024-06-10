TestRetailChickenFinderRepository = BaseTestClass:new()
    -- @covers RetailChickenFinderRepository:__construct()
    function TestRetailChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgRetailChickenFinderRepository')

        lu.assertNotNil(instance)
    end

    -- @covers RetailChickenFinderRepository:playerHasChicken()
    -- @TODO: To be implemented in the future <2024.06.10>
    function TestRetailChickenFinderRepository:testPlayerHasChicken()
        local instance = AmazingChicken.__:new('OmgAbstractChickenFinderRepository')

        -- abstract method
        lu.assertError(function() instance:playerHasChicken() end)
    end
-- end of TestRetailChickenFinderRepository