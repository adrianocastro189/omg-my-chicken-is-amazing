TestInteractions = BaseTestClass:new()
    -- @covers Interactions:__construct()
    function TestInteractions:testConstruct()
        local instance = AmazingChicken:new('Omg/Interactions')

        lu.assertNotNil(instance)
    end

    -- @covers Interactions:lamentChickenAbsence()
    -- @covers Interactions:lamentLackOfChicken()
    function TestInteractions:testLament()
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