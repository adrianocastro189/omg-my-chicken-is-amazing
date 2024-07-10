TestClassicEraChickenFinderRepository = BaseTestClass:new()
    -- helper method to instantiate the classic implementation
    function TestClassicEraChickenFinderRepository:instance()
        AmazingChicken.environment.getClientFlavor = function () return AmazingChicken.environment.constants.CLIENT_CLASSIC_ERA end
        return AmazingChicken:new('Omg/ChickenFinderRepository')
    end

    -- @covers ClassicEraChickenFinderRepository:__construct()
    function TestClassicEraChickenFinderRepository:testConstruct()
        local instance = self:instance()

        lu.assertNotNil(instance)
    end

    -- @covers ClassicEraChickenFinderRepository:playerHasChicken()
    function TestClassicEraChickenFinderRepository:testPlayerHasChicken()
        AmazingChicken.playerInventory = {
            hasItem = function(self, itemId)
                return itemId == 11110
            end
        }

        lu.assertIsTrue(self:instance():playerHasChicken())
    end
-- end of TestClassicEraChickenFinderRepository