TestRetailChickenFinderRepository = BaseTestClass:new()
    -- @covers RetailChickenFinderRepository:__construct()
    function TestRetailChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgRetailChickenFinderRepository')

        lu.assertNotNil(instance)
    end
-- end of TestRetailChickenFinderRepository