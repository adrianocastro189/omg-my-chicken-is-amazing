TestClassicEraChickenFinderRepository = BaseTestClass:new()
    -- @covers ClassicEraChickenFinderRepository:__construct()
    function TestClassicEraChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgClassicEraChickenFinderRepository')

        lu.assertNotNil(instance)
    end
-- end of TestClassicEraChickenFinderRepository