TestOmgMyChickenIsAmazing = BaseTestClass:new()
    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonInitialization()
        lu.assertNotIsNil(AmazingChicken.chickenFinderRepository)
    end

    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonTableIsSet()
        lu.assertNotIsNil(AmazingChicken)
    end

    -- @covers AmazingChicken:showWelcomeMessage()
    function TestOmgMyChickenIsAmazing:testShowWelcomeMessage()
        local function execution(playerHasChicken, expectedOutputMessage)
            AmazingChicken.chickenFinderRepository.playerHasChicken = function()
                return playerHasChicken
            end

            AmazingChicken:showWelcomeMessage()

            lu.assertIsTrue(AmazingChicken.__.output:printed(expectedOutputMessage))
        end

        execution(true, 'Yay! My chicken is in my inventory and can be summoned at any time!')
        execution(false, 'Aww =( my chicken is not in my bags...')
    end
-- end of OmgMyChickenIsAmazingTest