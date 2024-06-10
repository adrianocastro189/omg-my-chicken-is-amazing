TestAbstractChickenFinderRepository = BaseTestClass:new()
    -- @covers AbstractChickenFinderRepository:__construct()
    function TestAbstractChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgAbstractChickenFinderRepository')

        lu.assertNotNil(instance)

        -- abstract method
        lu.assertError(function() instance:playerHasChicken() end)
    end
-- end of TestAbstractChickenFinderRepository