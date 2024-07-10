TestAbstractChickenFinderRepository = BaseTestClass:new()
    -- @covers AbstractChickenFinderRepository:__construct()
    function TestAbstractChickenFinderRepository:testConstruct()
        local instance = AmazingChicken:getClass('Omg/AbstractChickenFinderRepository').__construct()

        lu.assertNotNil(instance)

        -- abstract methods
        local abstractMethods = {
            'isChickenSummoned',
            'playerHasChicken',
        }

        for _, methodName in ipairs(abstractMethods) do
            lu.assertErrorMsgContentEquals(
                'This is an abstract method and should be implemented by this class inheritances',
                function() instance[methodName]() end
            )
        end
    end
-- end of TestAbstractChickenFinderRepository