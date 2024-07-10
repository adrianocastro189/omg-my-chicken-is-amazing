AmazingChicken = StormwindLibrary_v1_8_0.new({
    colors = {
        primary = 'CC7E0E'
    },
    command = 'amazingchicken',
    inventory = {
        track = true,
    },
    name = 'OMG! My Chicken is amazing!'
})

local events = AmazingChicken.events

events:listen(events.EVENT_NAME_PLAYER_LOGIN, function ()
    -- initializes the chicken finder repository singleton
    AmazingChicken.chickenFinderRepository = AmazingChicken:new('Omg/ChickenFinderRepository')

    -- initializes the interactions instance
    AmazingChicken.interactions = AmazingChicken
        :new('Omg/Interactions')
        :registerInterval()

    --[[
    This method will output the given message to the chat frame.

    It uses the output method from Stormwind Library, which can be easily
    replaced by another method that outputs messages to the chat frame in
    case the addon is used in another context, like a test environment.
    ]]
    function AmazingChicken:out(message)
        AmazingChicken.output:out(message)
    end
end)