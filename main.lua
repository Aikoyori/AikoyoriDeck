SMODS.Atlas{
    key = "aikodeck",
    path = 'aikodeck.png',
    px = 71,
    py = 95,
}
SMODS.Atlas{
    key = "aikodeck_custom_col",
    path = 'aikodeck_custom_col.png',
    px = 71,
    py = 95,
}
SMODS.Atlas{
    key = "deck_view_icon",
    path = 'icons.png',
    px = 20,
    py = 20,
}

local ranks = { '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace', }
local prev_ranks = { '10', 'Jack', 'Queen', 'King', 'Ace' }

for i, suit in ipairs({'Hearts', 'Clubs', 'Diamonds', 'Spades'}) do
    SMODS.DeckSkin{
        key = "aikodeck_"..string.lower(suit),
        suit = suit,
        loc_txt = {
            ['en-us'] = "Aikoyori's ".. suit,
        },
        palettes = {
            {
                key = 'lc',
                ranks = ranks,
                display_ranks = prev_ranks,
                pos_style = 'deck',
                suit_icon = {
                    atlas = 'akyrdeck_deck_view_icon',
                    pos = { x = i - 1, y = 0 },
                },
                atlas = 'akyrdeck_aikodeck',
            },
            {
                key = 'hc',
                ranks = ranks,
                display_ranks = prev_ranks,
                pos_style = 'deck',
                suit_icon = {
                    atlas = 'akyrdeck_deck_view_icon',
                    pos = { x = i - 1, y = 1 },
                },
                -- colour = suit == 'Clubs' and HEX('22ca47'),
                atlas = 'akyrdeck_aikodeck_custom_col',
            },
        }
    }
end