TestOmgMyChickenIsAmazing = BaseTestClass:new()
    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonInitialization()
        AmazingChicken.__.events:notify(AmazingChicken.__.events.EVENT_NAME_PLAYER_LOGIN)

        lu.assertNotIsNil(AmazingChicken.chickenFinderRepository)
    end

    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonTableIsSet()
        lu.assertNotIsNil(AmazingChicken)
    end
-- end of OmgMyChickenIsAmazingTest