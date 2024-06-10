local __ = StormwindLibrary_v1_4_0.new({
    colors = {
        primary = 'CC7E0E'
    },
    command = 'amazingchicken',
    name = 'OMG! My Chicken is amazing!'
})

AmazingChicken = {}
AmazingChicken.__ = __

local events = __.events

events:listen(events.EVENT_NAME_PLAYER_LOGIN, function ()
    AmazingChicken.__.output:out('Temporary message to indicate the addon was loaded')
end)