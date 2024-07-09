TestInteractions = BaseTestClass:new()
    -- @covers Interactions:__construct()
    function TestInteractions:testConstruct()
        local instance = AmazingChicken:new('Omg/Interactions')

        lu.assertNotNil(instance)
    end

    -- @covers Interactions:lament()
    function TestInteractions:testLament()
        local function execution(playerHasChicken, playerChickenIsSummoned, expectedMethod)
            AmazingChicken.chickenFinderRepository = {
                playerHasChicken = function (self) return playerHasChicken end,
                playerChickenIsSummoned = function (self) return playerChickenIsSummoned end
            }

            local instance = AmazingChicken:new('Omg/Interactions')

            instance.methodCalled = nil

            instance.lamentLackOfChicken = function (self) instance.methodCalled = 'lamentLackOfChicken' end
            instance.lamentChickenAbsence = function (self) instance.methodCalled = 'lamentChickenAbsence' end

            instance:lament()

            lu.assertEquals(instance.methodCalled, expectedMethod)
        end

        -- player has chicken, chicken is summoned
        execution(true, true, nil)

        -- player has chicken, chicken is not summoned
        execution(true, false, 'lamentChickenAbsence')

        -- player doesn't have chicken
        execution(false, false, 'lamentLackOfChicken')
    end

    -- @covers Interactions:lamentChickenAbsence()
    -- @covers Interactions:lamentLackOfChicken()
    function TestInteractions:testLamentWithMessagesSaid()
        local function execution(method, expectedMessageSaid)
            local instance = AmazingChicken:new('Omg/Interactions')

            AmazingChicken.output = {
                say = function (self, message)
                    AmazingChicken.messageArg = message
                end
            }

            instance[method](instance)

            lu.assertEquals(AmazingChicken.messageArg, expectedMessageSaid)
        end

        -- lament chicken absence
        execution('lamentChickenAbsence', 'Oh, I wish my Westfall chicken was here with me...')

        -- lament lack of chicken
        execution('lamentLackOfChicken', 'Oh, I wish I had a Westfall chicken...')
    end
-- end of TestInteractions