TestInteractions = BaseTestClass:new()
    -- @covers Interactions:__construct()
    function TestInteractions:testConstruct()
        local instance = AmazingChicken:new('Omg/Interactions')

        lu.assertNotNil(instance)
    end

    -- @covers Interactions:createInterval()
    function TestInteractions:testCreateInterval()
        local instance = AmazingChicken:new('Omg/Interactions')

        lu.assertNotIsNil(instance:createInterval())
    end

    -- @covers Interactions:lament()
    function TestInteractions:testLament()
        local function execution(playerHasChicken, playerChickenIsSummoned, expectedMethod)
            AmazingChicken.chickenFinderRepository = {
                playerHasChicken = function (self) return playerHasChicken end,
                isChickenSummoned = function (self) return playerChickenIsSummoned end
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

    -- @covers Interactions:maybeLament()
    function TestInteractions:testMaybeLament()
        local function execution(randomNumber, shouldLament)
            local instance = AmazingChicken:new('Omg/Interactions')

            instance.randomNumber = function (self) return randomNumber end
            instance.lamentInvoked = false

            instance.lament = function (self) instance.lamentInvoked = true end

            instance:maybeLament()

            lu.assertEquals(shouldLament, instance.lamentInvoked)
        end

        -- random number is zero
        execution(0, true)

        -- random number represents less than 10%
        execution(0.09, true)

        -- random number is slightly greater than 10%
        execution(0.1000000000000001, false)

        -- random number is exactly 10%
        execution(0.1, true)

        -- random number represents more than 10%
        execution(0.11, false)
    end

    -- @covers Interactions:randomNumber()
    function TestInteractions:testRandomNumber()
        local instance = AmazingChicken:new('Omg/Interactions')

        lu.assertNotNil(instance:randomNumber())
    end

    -- @covers Interactions:registerInterval()
    function TestInteractions:testRegisterInterval()
        local instance = AmazingChicken:new('Omg/Interactions')

        local interval = AmazingChicken:new('Interval')
        interval.start = function () interval.startInvoked = true end

        instance.createInterval = function () return interval end

        lu.assertEquals(instance:registerInterval(), instance)
        lu.assertEquals(60, interval.seconds)
        lu.assertIsFunction(interval.callback)
        lu.assertTrue(interval.startInvoked)
    end
-- end of TestInteractions