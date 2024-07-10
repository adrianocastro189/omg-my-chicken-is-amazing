TestOmgMyChickenIsAmazing = BaseTestClass:new()
    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonInitialization()
        lu.assertNotIsNil(AmazingChicken.chickenFinderRepository)
        lu.assertNotIsNil(AmazingChicken.interactions)
    end

    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonTableIsSet()
        lu.assertNotIsNil(AmazingChicken)
    end
-- end of OmgMyChickenIsAmazingTest