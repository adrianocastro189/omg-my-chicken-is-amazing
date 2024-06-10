TestAbstractChickenFinderRepository = BaseTestClass:new()
    -- @covers AbstractChickenFinderRepository:__construct()
    function TestAbstractChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgAbstractChickenFinderRepository')

        lu.assertNotNil(instance)
    end
-- end of TestAbstractChickenFinderRepository