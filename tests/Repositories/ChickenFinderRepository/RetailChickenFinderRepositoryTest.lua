TestRetailChickenFinderRepository = BaseTestClass:new()
    -- helper method to instantiate the classic implementation
    function TestRetailChickenFinderRepository:instance()
        AmazingChicken.environment.getClientFlavor = function () return AmazingChicken.environment.constants.CLIENT_RETAIL end
        return AmazingChicken:new('Omg/ChickenFinderRepository')
    end

    -- @covers RetailChickenFinderRepository:__construct()
    function TestRetailChickenFinderRepository:testConstruct()
        local instance = self:instance()

        lu.assertNotNil(instance)
        lu.assertIsTable(instance.petJournal)
        lu.assertEquals(84, instance.westfallChickenSpeciesId)
    end

    -- @covers RetailChickenFinderRepository:isChickenSummoned()
    function TestRetailChickenFinderRepository:testIsChickenSummoned()
        local function execution(summonedSpeciesId, expectedResult)
            local instance = self:instance()

            instance.petJournal = {
                getSummonedPetSpeciesId = function (self)
                    return summonedSpeciesId
                end
            }

            local result = instance:isChickenSummoned()

            lu.assertEquals(expectedResult, result)
        end

        -- no pet summoned
        execution(nil, false)

        -- not the Westfall chicken
        execution(1, false)

        -- the Westfall chicken
        execution(84, true)
    end

    -- @covers RetailChickenFinderRepository:playerHasChicken()
    function TestRetailChickenFinderRepository:testPlayerHasChicken()
        local instance = self:instance()

        instance.petJournal = {
            playerOwnsPet = function (self, speciesId)
                instance.speciesIdArg = speciesId
                return true
            end
        }

        local result = instance:playerHasChicken()

        lu.assertTrue(result)
        lu.assertEquals(84, instance.speciesIdArg)
    end
-- end of TestRetailChickenFinderRepository