local __ = StormwindLibrary_v1_6_0.new({
    colors = {
        primary = 'CC7E0E'
    },
    command = 'amazingchicken',
    inventory = {
        track = true,
    },
    name = 'OMG! My Chicken is amazing!'
})

AmazingChicken = {}
AmazingChicken.__ = __

local events = __.events

events:listen(events.EVENT_NAME_PLAYER_LOGIN, function ()
    -- initializes the chicken finder repository singleton
    AmazingChicken.chickenFinderRepository = AmazingChicken.__:new('OmgChickenFinderRepository')

    --[[
    This method will output the given message to the chat frame.

    It uses the output method from Stormwind Library, which can be easily
    replaced by another method that outputs messages to the chat frame in
    case the addon is used in another context, like a test environment.
    ]]
    function AmazingChicken:out(message)
        AmazingChicken.__.output:out(message)
      end

    --[[
    Shows a welcome message to the player when logging in.

    This method will probably be replaced later by a more complex iteration
    class that will have more logic and paths. For now, it is just a simple
    method to serve as a proof of concept.
    ]]
    function AmazingChicken:showWelcomeMessage()
        if self.chickenFinderRepository:playerHasChicken() then
            AmazingChicken:out('Yay! My chicken is in my inventory and can be summoned at any time!')
            return
        end
        
        AmazingChicken:out('Aww =( my chicken is not in my bags...')
    end

    if AmazingChicken.__.environment:inGame() then
        -- we want this call to be made only when the player is in the game
        -- so tests won't be affected by it
        AmazingChicken:showWelcomeMessage()
    end
end)