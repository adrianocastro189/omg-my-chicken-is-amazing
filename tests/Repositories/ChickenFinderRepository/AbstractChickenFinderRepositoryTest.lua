TestAbstractChickenFinderRepository = BaseTestClass:new()
    -- @covers AbstractChickenFinderRepository:__construct()
    function TestAbstractChickenFinderRepository:testConstruct()
        local instance = AmazingChicken:getClass('Omg/AbstractChickenFinderRepository').__construct()

        lu.assertNotNil(instance)

        -- abstract method
        lu.assertError(function() instance:playerHasChicken() end)
    end
-- end of TestAbstractChickenFinderRepository