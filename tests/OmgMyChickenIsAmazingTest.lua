TestOmgMyChickenIsAmazing = BaseTestClass:new()
    -- @covers OmgMyChickenIsAmazing
    function TestOmgMyChickenIsAmazing:testAddonData()
        lu.assertNotIsNil(AmazingChicken)
    end
-- end of OmgMyChickenIsAmazingTest