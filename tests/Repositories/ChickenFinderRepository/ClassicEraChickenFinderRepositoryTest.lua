TestClassicEraChickenFinderRepository = BaseTestClass:new()
    -- @covers ClassicEraChickenFinderRepository:__construct()
    function TestClassicEraChickenFinderRepository:testConstruct()
        local instance = AmazingChicken.__:new('OmgClassicEraChickenFinderRepository')

        lu.assertNotNil(instance)
    end

    -- @covers ClassicEraChickenFinderRepository:playerHasChicken()
    function TestClassicEraChickenFinderRepository:testPlayerHasChicken()
        AmazingChicken.__.playerInventory = {
            hasItem = function(self, itemId)
                return itemId == 11110
            end
        }

        local instance = AmazingChicken.__:new('OmgClassicEraChickenFinderRepository')

        lu.assertIsTrue(instance:playerHasChicken())
    end
-- end of TestClassicEraChickenFinderRepository