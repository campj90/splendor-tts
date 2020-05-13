--
-- Original Worshop done by kittyhat
-- https://steamcommunity.com/sharedfiles/filedetails/?id=1237112888
--
-- Counting Bowl made by MrStump
-- https://steamcommunity.com/sharedfiles/filedetails/?id=946300090
--
-- Set up-script done by JuggePugge
-- Counting bowl added to this version of Splendor by dpws88
--

DEBUG_VAR = 0

-- Cost, Point, and Gem values of all cards. This is necessary to be in global because Card ID is the only reliable attribute on a card.
CARD_VALUE_TBL = {
    [100] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [101] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [102] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 1,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [103] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [104] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 0,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [105] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 0,
            ['Onyx'] = 2,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [106] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 1,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [107] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 0,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [108] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [109] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [110] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 2,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [111] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 2,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [112] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 4
        },
        ['Points'] = 1,
        ['Gem'] = 'Sapphire'
    },
    [113] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 2,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [114] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 0,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [115] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [116] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 4,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Onyx'
    },
    [117] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [118] = {
        ['Cost'] = {
            ['Diamond'] = 4,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Ruby'
    },
    [119] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 2,
            ['Sapphire'] = 1,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [120] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [121] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [122] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 4,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Diamond'
    },
    [123] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [124] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [125] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 0,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [126] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 0,
            ['Onyx'] = 1,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [127] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Emerald'
    },
    [128] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 4,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Emerald'
    },
    [129] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [130] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Sapphire'
    },
    [131] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [132] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 2,
            ['Onyx'] = 1,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Diamond'
    },
    [133] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [134] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 1,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [135] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 1,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [136] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [137] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 1,
            ['Onyx'] = 0,
            ['Sapphire'] = 1,
            ['Ruby'] = 1
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [138] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 1,
            ['Onyx'] = 1,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 0,
        ['Gem'] = 'Onyx'
    },
    [139] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 0,
        ['Gem'] = 'Ruby'
    },
    [300] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 0,
            ['Onyx'] = 5,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Ruby'
    },
    [301] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 6,
            ['Ruby'] = 0
        },
        ['Points'] = 3,
        ['Gem'] = 'Sapphire'
    },
    [302] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 6,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 3,
        ['Gem'] = 'Emerald'
    },
    [303] = {
        ['Cost'] = {
            ['Diamond'] = 6,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 3,
        ['Gem'] = 'Diamond'
    },
    [304] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 3,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Onyx'
    },
    [305] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 5,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Emerald'
    },
    [306] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 5,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 2,
        ['Gem'] = 'Onyx'
    },
    [307] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 1,
        ['Gem'] = 'Ruby'
    },
    [308] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 4,
            ['Onyx'] = 0,
            ['Sapphire'] = 1,
            ['Ruby'] = 2
        },
        ['Points'] = 2,
        ['Gem'] = 'Onyx'
    },
    [309] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 1,
        ['Gem'] = 'Emerald'
    },
    [310] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 5
        },
        ['Points'] = 2,
        ['Gem'] = 'Diamond'
    },
    [311] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 6
        },
        ['Points'] = 3,
        ['Gem'] = 'Ruby'
    },
    [312] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 1,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 4
        },
        ['Points'] = 2,
        ['Gem'] = 'Diamond'
    },
    [313] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 5,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Ruby'
    },
    [314] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 2,
            ['Sapphire'] = 0,
            ['Ruby'] = 2
        },
        ['Points'] = 1,
        ['Gem'] = 'Diamond'
    },
    [315] = {
        ['Cost'] = {
            ['Diamond'] = 4,
            ['Emerald'] = 0,
            ['Onyx'] = 1,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Emerald'
    },
    [316] = {
        ['Cost'] = {
            ['Diamond'] = 5,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Sapphire'
    },
    [317] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 6,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 3,
        ['Gem'] = 'Onyx'
    },
    [318] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 0,
            ['Sapphire'] = 5,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Emerald'
    },
    [319] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 3,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Sapphire'
    },
    [320] = {
        ['Cost'] = {
            ['Diamond'] = 5,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Onyx'
    },
    [321] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 4,
            ['Sapphire'] = 0,
            ['Ruby'] = 1
        },
        ['Points'] = 2,
        ['Gem'] = 'Sapphire'
    },
    [322] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 3
        },
        ['Points'] = 1,
        ['Gem'] = 'Sapphire'
    },
    [323] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 5
        },
        ['Points'] = 2,
        ['Gem'] = 'Diamond'
    },
    [324] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 3
        },
        ['Points'] = 1,
        ['Gem'] = 'Diamond'
    },
    [325] = {
        ['Cost'] = {
            ['Diamond'] = 1,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 4,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Ruby'
    },
    [326] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 2,
            ['Onyx'] = 0,
            ['Sapphire'] = 2,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Onyx'
    },
    [327] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 3,
            ['Ruby'] = 2
        },
        ['Points'] = 1,
        ['Gem'] = 'Ruby'
    },
    [328] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 5,
            ['Ruby'] = 0
        },
        ['Points'] = 2,
        ['Gem'] = 'Sapphire'
    },
    [329] = {
        ['Cost'] = {
            ['Diamond'] = 2,
            ['Emerald'] = 0,
            ['Onyx'] = 2,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 1,
        ['Gem'] = 'Emerald'
    },
    [400] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 7
        },
        ['Points'] = 4,
        ['Gem'] = 'Onyx'
    },
    [401] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 7,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 5,
        ['Gem'] = 'Ruby'
    },
    [402] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 7,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Emerald'
    },
    [403] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 0,
            ['Onyx'] = 6,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 4,
        ['Gem'] = 'Diamond'
    },
    [404] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 5,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 3
        },
        ['Points'] = 3,
        ['Gem'] = 'Onyx'
    },
    [405] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 6
        },
        ['Points'] = 4,
        ['Gem'] = 'Onyx'
    },
    [406] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 7,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Diamond'
    },
    [407] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 3,
            ['Onyx'] = 0,
            ['Sapphire'] = 6,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Emerald'
    },
    [408] = {
        ['Cost'] = {
            ['Diamond'] = 7,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 5,
        ['Gem'] = 'Sapphire'
    },
    [409] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 6,
            ['Onyx'] = 0,
            ['Sapphire'] = 3,
            ['Ruby'] = 3
        },
        ['Points'] = 4,
        ['Gem'] = 'Ruby'
    },
    [410] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 7,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Ruby'
    },
    [411] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 0,
            ['Ruby'] = 7
        },
        ['Points'] = 5,
        ['Gem'] = 'Onyx'
    },
    [412] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 0,
            ['Sapphire'] = 7,
            ['Ruby'] = 0
        },
        ['Points'] = 5,
        ['Gem'] = 'Emerald'
    },
    [413] = {
        ['Cost'] = {
            ['Diamond'] = 5,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 3,
            ['Ruby'] = 3
        },
        ['Points'] = 3,
        ['Gem'] = 'Emerald'
    },
    [414] = {
        ['Cost'] = {
            ['Diamond'] = 6,
            ['Emerald'] = 0,
            ['Onyx'] = 3,
            ['Sapphire'] = 3,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Sapphire'
    },
    [415] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 0,
            ['Onyx'] = 7,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 5,
        ['Gem'] = 'Diamond'
    },
    [416] = {
        ['Cost'] = {
            ['Diamond'] = 7,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Sapphire'] = 0,
            ['Ruby'] = 0
        },
        ['Points'] = 4,
        ['Gem'] = 'Sapphire'
    },
    [417] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 3,
            ['Onyx'] = 3,
            ['Sapphire'] = 5,
            ['Ruby'] = 0
        },
        ['Points'] = 3,
        ['Gem'] = 'Ruby'
    },
    [418] = {
        ['Cost'] = {
            ['Diamond'] = 0,
            ['Emerald'] = 3,
            ['Onyx'] = 3,
            ['Sapphire'] = 3,
            ['Ruby'] = 5
        },
        ['Points'] = 3,
        ['Gem'] = 'Diamond'
    },
    [419] = {
        ['Cost'] = {
            ['Diamond'] = 3,
            ['Emerald'] = 3,
            ['Onyx'] = 5,
            ['Sapphire'] = 0,
            ['Ruby'] = 3
        },
        ['Points'] = 3,
        ['Gem'] = 'Sapphire'
    }
}

PURCH_TBLT_GUID = 'e4651e'

NOBLE_BAG_GUID = 'ee4886'
SETUP_BUTTON_GUID = '15c5d5'

DECK_GUID_TBL = { 'cb9f20', 'e04b36', '142d5b' }
-- gem_bag_guids = { "2ebfea", "02cff8", "f450c1", "325fc4", "38de5d", "233391" }
GEM_BAG_GUID_TBL = {
    ['Ruby'] = 'f450c1',
    ['Sapphire'] = '325fc4',
    ['Onyx'] = '38de5d',
    ['Diamond'] = '2ebfea',
    ['Emerald'] = '02cff8',
    ['Gold'] = '233391'
}

SCOR_ZONE_GUID = '33837d'

rotation = {}
rotation.oneEighty = { 0, 180, 0 }


noble_positions = {
  { 2, 1, 9 },
  { -2, 1, 9 },
  { -6, 1, 9 },
  { -10, 1, 9 },
  { -14, 1, 9 },
}

card_positions = {
  { -10, 2, 5 },
  { -6, 2, 5 },
  { -2, 2, 5 },
  { 2, 2, 5 },
  { -10, 2, 0.75 },
  { -6, 2, 0.75 },
  { -2, 2, 0.75 },
  { 2, 2, 0.75 },
  { -10, 2, -3.5 },
  { -6, 2, -3.5 },
  { -2, 2, -3.5 },
  { 2, 2, -3.5 },
}

-- Variable for state mgmt. Due to branching nature of taking gems, this is easier to be a table.
PREV_ACT = {
    nil
}

-- Variable for public card positions. Used for turn cleanup and calling resetTurn.
PUBLIC_CARDS_TBL = {}

BUTTON_INST = '4975eb'

-- Clockwise or counter-clockwise
TURN_ORDERS_TBL = {
    {'White', 'Red', 'Green', 'Blue'},
    {'Blue', 'Green', 'Red', 'White'}
}

-- 1 is normal order, -1 is reversed order
SET_TURN_ORDER = 1
ACTIVE_PLYR = nil

XYZ_ADJ_TBL = {
    ['Blue'] = {1, 1, 1},
    ['Green'] = {-1, 1, 1},
    ['Red'] = {-1, 1, -1},
    ['White'] = {1, 1, -1}
}

CARD_CT_TBL = {
    ['Blue'] = 0,
    ['Green'] = 0,
    ['Red'] = 0,
    ['White'] = 0
}

PURCH_POS_TBL = {
    { 10, 1.12, 12.15 },
    { 10, 2.08, 13.0 },
    { 10, 3.04, 13.85 },
    { 10, 4.0, 14.7 },
    { 12.3, 1.12, 12.15 },
    { 12.3, 2.08, 13.0 },
    { 12.3, 3.04, 13.85 },
    { 12.3, 4.0, 14.7 },
    { 14.6, 1.12, 12.15 },
    { 14.6, 2.08, 13.0 },
    { 14.6, 3.04, 13.85 },
    { 14.6, 4.0, 14.7 },
    { 16.9, 1.12, 12.15 },
    { 16.9, 2.08, 13.0 },
    { 16.9, 3.04, 13.85 },
    { 16.9, 4.0, 14.7 },
    { 19.2, 1.12, 12.15 },
    { 19.2, 2.08, 13.0 },
    { 19.2, 3.04, 13.85 },
    { 19.2, 4.0, 14.7 },
    { 21.5, 1.12, 12.15 },
    { 21.5, 2.08, 13.0 },
    { 21.5, 3.04, 13.85 },
    { 21.5, 4.0, 14.7 }
}

NOBLE_CT_TBL = {
    ['Blue'] = 0,
    ['Green'] = 0,
    ['Red'] = 0,
    ['White'] = 0
}

VISIT_POS_TBL = {
    { 6.6381073, 0.96, 10.7929964 },
    { 6.6381073, 0.96, 15.7678995 },
    { 24.9, 0.96, 10.7929964 },
    { 24.9, 0.96, 15.7678995 },
    { 15.7710314, 0.96, 8.30312252 }
}

AVAIL_NOBLES_TBL = {}

SCORE_TBL = {}

END_GAME_TURN = ''

function onload()
    button_setup('Set-up', SETUP_BUTTON_GUID, 'setUp', 6000, 2000, 800)
    -- for k, v in ipairs(getSeatedPlayers()) do
        -- print(v)
    -- end
end

function onObjectEnterContainer(container, _)
    updateLabel(container)
end

function onObjectLeaveContainer(container, _)
    updateLabel(container)
end

function updateLabel(container)
    for k, gem_bag_guid in pairs(GEM_BAG_GUID_TBL) do
        if container.guid == gem_bag_guid then
            local objects_in_bag = container.getQuantity()
            container.editButton({ index = 0, label = objects_in_bag })
        end
    end
end

function doNothing()
end

function setUp()
    SEATED_PLYRS = getSeatedPlayers()
    numberOfPlayers = #SEATED_PLYRS
    math.randomseed(os.time())
    -- coRoutine to be able to yield in waitFrames(...)
    startLuaCoroutine(Global, 'setupCoRoutine')
end

function setupCoRoutine()
    removeSetupButton()
    
    placeNobleTiles()
    placeAllCards()
    updateGemSupply()
    selectStartingPlayer()
    return 1
end

function removeSetupButton()
    getObjectFromGUID(SETUP_BUTTON_GUID).destroy()
end

function placeNobleTiles()
    local tiles_based_on_player_count = numberOfPlayers + 1
    local bag = getObjectFromGUID(NOBLE_BAG_GUID)
    doTheShuffle(bag)
    for i = 1, tiles_based_on_player_count do
        local tile = bag.takeObject({
            position = noble_positions[i],
            rotation = rotation.oneEighty,
            smooth = false,
            callback_function = function(obj) updateNoblesTbl(obj) end
        })
        waitFrames(5)
        tile.setLock(true)
    end
    shout('Placing ' .. tiles_based_on_player_count .. ' nobles for ' .. numberOfPlayers .. ' players.')
end

function placeAllCards()
    local cardNo = 1
    for deckNo = 1, 3 do
        local deck = getObjectFromGUID(DECK_GUID_TBL[deckNo])
        doTheShuffle(deck)
        for _ = 1, 4 do
            local card = deck.takeObject({
                position = card_positions[cardNo],
                rotation = rotation.oneEighty,
                smooth = false,
                callback_function = function(obj) updateCardTbl(obj, card_positions[cardNo]) end
            })
            waitFrames(5)
            cardNo = cardNo + 1
        end
    end
    
    -- Run updateNoblesTbl again to ensure cost is set
    for k, v in pairs(AVAIL_NOBLES_TBL) do
        if v == '' then
            local badNoble = getObjectFromGUID(k)
            updateNoblesTbl(badNoble)
        end
    end
end

function updateCardTbl(objCard, objVector)
    debugMsg('In updateCardTbl function')
    
    local cardId = getCardId(objCard)
    debugMsg('cardId is ' .. cardId)
    
    Wait.frames(doNothing, 10)
    objCard.setDescription(cardId)
    
    PUBLIC_CARDS_TBL[cardId] = objCard.getPosition()
    
    debugMsg('PUBLIC_CARDS_TBL[' .. cardId .. '] is now ' .. tostring(PUBLIC_CARDS_TBL[cardId]))
end

function updateNoblesTbl(objNoble)
    local nobleGuid = objNoble.getGUID()
    debugMsg('nobleGuid is ' .. nobleGuid)
    
    local nobleCost = objNoble.getTable('Cost')
    debugMsg('nobleCost is ' .. tostring(nobleCost))
    if nobleCost ~= nil then
        AVAIL_NOBLES_TBL[nobleGuid] = nobleCost
    else
        AVAIL_NOBLES_TBL[nobleGuid] = ''
    end
end

function updateGemSupply()
    local no_of_gems_to_remove_based_on_player_count = { 0, 3, 2, 0 }
    local gems_to_remove = no_of_gems_to_remove_based_on_player_count[numberOfPlayers]
    shout('Removing ' .. gems_to_remove .. ' gems from each type.')
    for k, gem_bag_guid in pairs(GEM_BAG_GUID_TBL) do
        local gem_bag = getObjectFromGUID(gem_bag_guid)
        if gem_bag.getName() ~= 'Gold' then -- Don't touch the gold!
            for i = 1, gems_to_remove do
                gem_bag.takeObject().destroy()
            end
        end
    end
end

function selectStartingPlayer()
    local startPlayerNo = math.random(1, #SEATED_PLYRS)
    ACTIVE_PLYR = SEATED_PLYRS[startPlayerNo]
    
    -- Build out scoring table
    for i, v in ipairs(SEATED_PLYRS) do
        SCORE_TBL[v] = 0
    end
    setScoringNote()
    
    local msg = Player[ACTIVE_PLYR].steam_name .. ' is starting player!'
    shout(msg)
    
    if math.random(0, 1) == 0 then
        SET_TURN_ORDER = -1
    end
    
    -- Move scoring zone to first player and set scale
    setScoringZonePos('true')
    
    -- Call activateResetBttn function to setup the reset turn button
    activateResetBttn(startPlayerNo)
end

-- Utilities
------------------------------------------------------------------------
function shout(msg)
    broadcastToAll(msg, { 2, 0.9, 0.9 })
end

-- function bullhorn(in_msg, color_tbl)
    -- -- Similar to shout but adds ability to specify color
    -- broadcastToAll(msg, color_tbl)
-- end

function doTheShuffle(deck)
    deck.shuffle()
    deck.shuffle()
end

function waitFrames(frames)
    while frames > 0 do
        coroutine.yield(0)
        frames = frames - 1
    end
end

function waitSeconds(noSeconds)
    local timeStamp = os.time() + noSeconds
    while timeStamp > os.time() do
        coroutine.yield(0)
    end
end

function button_setup(label, guid, function_name, width, height, font_size)
    local button = getObjectFromGUID(guid)
    if button == nil then
        print('Button \'', label, '\' does not exist, skipping it...')
        return
    end
    local button_parameters = {
        click_function = function_name,
        label = label,
        function_owner = nil,
        position = { 0, 0.2, 0 },
        rotation = rotation.oneEighty,
        snap = false,
        width = width,
        height = height,
        font_size = font_size,
    }
    button.createButton(button_parameters)
    return button
end

-- [[
--     Changes by JCampbell
-- ]]

-- function onPlayerTurn(varplaya)
    -- -- Undocumented API change: https://old.reddit.com/r/tabletopsimulator/comments/g7w5be/scripting_confused_by_onplayerturn_what_is/fojz49p/
    -- -- print("Testing... " .. varplaya)
    -- for k,v in pairs(varplaya) do
        -- print("Found key: " .. k)
    -- end
    -- print(varplaya.color)
    -- activePlyr = vaplaya.color
-- end

function returnObject(inObject)
    debugMsg('In returnObject function')
    
    -- Get inObject's nickname
    local objName = inObject.getName()
    
    -- Check whether the Owner variable is set
    local checkOwner = inObject.getVar('Owner')
    
    if checkOwner ~= nil then
        debugMsg('inObject has the Owner variable set to ' .. checkOwner)
        
        local handData = Player[checkOwner].getHandTransform()
        inObject.setPosition(handData['position'])
        return
    elseif GEM_BAG_GUID_TBL[objName] ~= nil then
        debugMsg('inObject is a gem')
        
        local gem_bag_guid = GEM_BAG_GUID_TBL[objName]
        local gem_bag = getObjectFromGUID(gem_bag_guid)
        local gem_bag_pos = gem_bag.getPosition()
        gem_bag_pos[2] = gem_bag_pos[2] + 0.5
        
        local gemGuid = inObject.getGUID()
        debugMsg('gemGuid is ' .. gemGuid)
        inObject.setPosition(gem_bag_pos)
        --gem_bag.putObject(inObject)
    else
        debugMsg('Object is not a gem or an owned object. Return to position set in the PUBLIC_CARDS_TBL.')
        
        local objId = getCardId(inObject)
        
        inObject.setRotation(rotation.oneEighty)
        inObject.setAngularVelocity({0, 0, 0})
        
        inObject.setPosition(PUBLIC_CARDS_TBL[objId])
        inObject.setVelocity({0, 0, 0})
    end
end

-- Function to get a card's CardID attr. Only two lines but need to get this a lot since GUID is unreliable for cards.
function getCardId(inCard)
    local cardJson = JSON.decode(inCard.getJSON())
    return cardJson['CardID']
end

function purchaseCard(purchTblt, clckColor, alt_click)
    debugMsg('In purchaseCard function')
    
    -- if the clicker is not the current player, then do nothing
    if clckColor ~= ACTIVE_PLYR then
        return
    end
    
    local shopper = Player[clckColor]
    local tbltPos = purchTblt.getPosition()
    local tbltBnds = purchTblt.getBounds()
    
    casting_debug = false
    if DEBUG_VAR ~= 0 then
        casting_debug = true
    end
    
    -- Get object(s) above purchasing tablet
    local tbltObj = Physics.cast({
        origin = tbltPos,
        direction = {0, 10, 0},
        type = 3,
        size = tbltBnds['size'],
        max_distance = 25,
        debug = casting_debug
    })
    
    -- Get all hit objects that are Card I, II, or III
    local cardTbl = {}
    for _, r in ipairs(tbltObj) do
        debugMsg('Looping hit objects')
        local objName = r.hit_object.getName()
        if objName:match('Card I+') then
            table.insert(cardTbl, r.hit_object)
        end
    end
    
    -- Get number of cards hit
    local noCards = #cardTbl
    
    -- If noCards is saying there are no cards, do nothing
    if noCards == 0 then
        debugMsg('No cards were found')
        return
    elseif noCards == 1 then
        debugMsg('One card was found from the Physics.cast')
        
        -- Checking whether this is allowed
        if not validateAction(cardTbl[1]) then
            return
        end
        
        -- Get cost of card
        local cardId = getCardId(cardTbl[1])
        local cardProps = CARD_VALUE_TBL[cardId]
        
        local debugStr = 'cardProps is:'
        for k, v in pairs(cardProps) do
            debugStr = debugStr .. '\n' .. k .. ': ' .. tostring(v)
        end
        debugMsg(debugStr)
        
        -- Get funds in player's hand
        local handTbl = shopper.getHandObjects()
        local cashMoneyTbl = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Ruby'] = 0,
            ['Sapphire'] = 0,
            ['Gold'] = 0
        }
        debugMsg('Iterating through shopper\'s hand')
        for _, handObj in ipairs(handTbl) do
            local handName = handObj.getName()
            if cashMoneyTbl[handName] ~= nil then
                cashMoneyTbl[handName] = cashMoneyTbl[handName] + 1
            end
        end
        
        -- Build out purchTbl by comparing cardProps to cashMoneyTbl
        local purchTbl = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Ruby'] = 0,
            ['Sapphire'] = 0,
            ['Gold'] = 0
        }
        -- if DEBUG_VAR == true then
            -- print('Comparing card cost to shopper\'s hand')
            
            -- print('cardProps[\'Cost\'] is:')
            -- for k, v in pairs(cardProps['Cost']) do
                -- print(k .. ': ' .. tostring(v))
            -- end
            -- print('')
            -- print('cashMoneyTbl is:')
            -- for k, v in pairs(cashMoneyTbl) do
                -- print(k .. ': ' .. tostring(v))
            -- end
        -- end
        
        local debugStr = [[Comparing card cost to shopper\'s hand'
        cardProps[\'Cost\'] is:]]
        for k, v in pairs(cardProps['Cost']) do
            debugStr =  debugStr .. '\n' .. k .. ': ' .. tostring(v)
        end
        
        local debugStr = debugStr .. '\n\ncashMoneyTbl is:'
        for k, v in pairs(cashMoneyTbl) do
            debugStr =  debugStr .. '\n' .. k .. ': ' .. tostring(v)
        end
        debugMsg(debugStr)
        
        for k, v in pairs(cardProps['Cost']) do
            if v > cashMoneyTbl[k] then
                purchTbl['Gold'] = purchTbl['Gold'] + (v - cashMoneyTbl[k])
                purchTbl[k] = cashMoneyTbl[k]
            else
                purchTbl[k] = v
            end
        end
        
        -- If the purchTbl['Gold'] is greater than amount of gold in hand, then the player does not have enough money to buy the card
        if purchTbl['Gold'] > cashMoneyTbl['Gold'] then
            debugMsg('Shopper requires more vespene gas.')
            
            broadcastToColor('Insufficient funds', clckColor, {r = 1, g = 0, b = 0})
            returnObject(cardTbl[1])
            return
            
        -- Iterate through objects in hand while decrementing purchTbl
        else
            debugMsg('Shopper is flush with cash. Paying for card, i.e. moving gems from hand back to storage.')
            debugMsg('purchTbl is:')
            for k, v in pairs(purchTbl) do
                debugMsg(k .. ': ' .. tostring(v))
            end
            
            -- Create a copy of purchTbl to store in PREV_ACT[3] -> This is for reset turn functionality
            local storedTbl = {}
            for k, v in pairs(purchTbl) do
                storedTbl[k] = v
            end
            
            for _, handObj in ipairs(handTbl) do
                local handName = handObj.getName()
                
                debugMsg('handName is ' .. handName)
                debugMsg('purchTbl value is ' .. tostring(purchTbl[handName]))
                
                if purchTbl[handName] ~= nil and purchTbl[handName] ~= 0 then
                    local gem_bag_guid = GEM_BAG_GUID_TBL[handName]
                    debugMsg('gem_bag_guid is ' .. gem_bag_guid)
                    
                    local gem_bag = getObjectFromGUID(gem_bag_guid)
                    handObj.setVar('Owner', nil)
                    gem_bag.putObject(handObj)
                    
                    purchTbl[handName] = purchTbl[handName] - 1
                end
            end
            
            -- Set variables indicting owner and that the card has been purchased
            if cardTbl[1].getVar('Owner') ~= nil then
                PREV_ACT[1] = 'buy_card_rsrvd'
            else
                PREV_ACT[1] = 'buy_card_raw'
                cardTbl[1].setVar('Owner', clckColor)
            end
            -- Set PREV_ACT[2] to the card's ID for use with reset turn button.
            PREV_ACT[2] = cardId
            PREV_ACT[3] = storedTbl
            
            -- Procured variable in combination with Owner is used for scoring.
            cardTbl[1].setVar('Procured', 1)
            
            debugMsg('Moving card to shopper\'s scoring zone.')
            
            -- Call positionObjects function to place the purchased card in proper location
            positionObjects(cardTbl[1], CARD_CT_TBL, PURCH_POS_TBL)
            
            activateEndTurnBttn()
        end
    else
        debugMsg('>1 cards were found during cast')
        -- Too many objects right now, plz go away.
        broadcastToColor('Too many cards are on the purchasing tablet. Returning to original positions.', clckColor, {r = 1, g = 0, b = 0})
        
        for _, v in ipairs(cardTbl) do
            returnObject(v)
        end
    end
end

function onObjectDrop(colorName, obj)
    debugMsg('In onObjectDrop')
    local objName = obj.getName()
    
    -- Maybe separate out Nobles because they never should be moved by players?
    if (objName:match('Card I+') and obj.name == 'Card') or (objName == 'Noble' and obj.name == 'Custom_Tile') or (obj.name == 'Custom_Model' and GEM_BAG_GUID_TBL[obj.getName()]) then
        debugMsg('In restricted obj condition')
        local varOwner = obj.getVar('Owner')
        
        -- if colorName == Turns.turn_color and (varOwner == nil or varOwner == colorName) then
        if colorName == ACTIVE_PLYR and (varOwner == nil or varOwner == colorName) then
            debugMsg('In condition if obj dropped by current player and not owned')
            -- Get objects in current players hand
            local handHolding = Player[colorName].getHandObjects()
            
            -- Compare each onject in hand v the dropped object
            for _, handObj in ipairs(handHolding) do
                debugMsg('In handObj iter')
                -- If the dropped object is in hand, set variable Owner to current player's color
                if handObj == obj then
                    debugMsg('obj found in ' .. colorName .. '\'s hand')
                    
                    -- Break out of loop if the object is already owned by the player. Without this, an already owned card can be mistaken as a newly reserved card.
                    if varOwner == colorName then
                        return
                    end
                    
                    local is_this_ok = validateAction(obj)
                    
                    if is_this_ok == true then
                        debugMsg('Reserve object action was validated')
                        
                        -- If this action is allowed, set object owner
                        obj.setVar('Owner', colorName)
                        
                        local checkVar = obj.getVar('Owner')
                        debugMsg('Owner var is now set to ' .. checkVar)
                        
                        -- If obj.name is Custom_model, it is a gem. Else it is a card. Set PREV_ACT accordingly.
                        if obj.name == 'Custom_Model' then
                            debugMsg('Reserved object is a gem. Setting state to \'rsrv_gem\'.')
                            PREV_ACT[1] = 'rsrv_gem'
                            
                            -- Get next available index in PREV_ACT.
                            local nextKey = #PREV_ACT + 1
                            debugMsg('nextKey is ' .. nextKey)
                            
                            -- Set the nextKey of PREV_ACT to the type of gem reserved.
                            local gemName = obj.getName()
                            PREV_ACT[nextKey] = gemName
                            debugMsg('PREV_ACT[' .. nextKey .. '] is ' .. PREV_ACT[nextKey])
                            
                            -- Check whether to activate end turn button
                            if #PREV_ACT == 4 or PREV_ACT[2] == PREV_ACT[3] then
                                debugMsg('Activating end turn button.')
                                activateEndTurnBttn()
                            end
                        else
                            debugMsg('Reserved object is a card. Setting state to \'rsrv_card\'.')
                            -- Set state
                            PREV_ACT[1] = 'rsrv_card'
                            local cardId = getCardId(obj)
                            PREV_ACT[2] = cardId
                            
                            -- Give gold
                            debugMsg('Dealing out gold.')
                            local gold_bag_guid = GEM_BAG_GUID_TBL['Gold']
                            local gold_bag = getObjectFromGUID(gold_bag_guid)
                            local handXform = Player[colorName].getHandTransform()
                            gold_bag.takeObject({
                                position = handXform['position'],
                                callback_function = function(obj) setGemOwner(obj, colorName) end,
                            })
                            
                            -- Enable the end turn button
                            debugMsg('Activating end turn button.')
                            activateEndTurnBttn()
                        end
                    -- If this action is not allowed, return obj to original position.
                    else
                        debugMsg('Reserve action was NOT validated. Running returnObject function.')
                        returnObject(obj)
                    end
                    return -- break -- or should this be return?
                end
            end
            
            -- Check if obj is a card and dropped above the purchase tablet
            if (objName:match('Card I+') and obj.name == 'Card') then
                debugMsg('In purch tablet check')
                
                local purchTblt = getObjectFromGUID(PURCH_TBLT_GUID)
                local tbltPos = purchTblt.getPosition()
                local tbltBnds = purchTblt.getBounds()
                
                debugMsg('tbltPos is ' .. tostring(tbltPos))
                debugMsg('tbltBnds[\'size\'] is ' .. tostring(tbltBnds['size']))
                
                casting_debug = false
                if DEBUG_VAR ~= 0 then
                    casting_debug = true
                end
                
                -- Get object(s) above purchasing tablet
                local tbltObj = Physics.cast({
                    origin = tbltPos,
                    direction = {0, 10, 0},
                    type = 3,
                    size = tbltBnds['size'],
                    max_distance = 25,
                    debug = casting_debug
                })
                for _, r in ipairs(tbltObj) do
                    debugMsg('Looping Physics.cast objects')
                    
                    local hitGuid = r.hit_object.getGUID()
                    -- print(hitGuid)
                    if obj == r.hit_object then
                        -- Check if the player is allowed to buy a card
                        local can_you_do_this = validateAction(obj)
                        
                        -- If they can, present the purchase button
                        if can_you_do_this == true then
                            debugMsg('Purchase action was validated')
                            
                            if ACTIVE_PLYR == 'Blue' or ACTIVE_PLYR == 'Green' then
                                posAdj = {0, 0.3, -4}
                                rotAdj = {0, 180, 0}
                            else
                                posAdj = {0, 0.3, 4}
                                rotAdj = {0, 0, 0}
                            end
                            purchTblt.createButton({
                                label = 'Purchase', click_function = 'purchaseCard', position = posAdj,
                                height = 600, width = 1500, rotation = rotAdj,
                                color = {0, 0, 0}, font_color = {1, 1, 1}, font_size = 300
                            })
                        else
                            returnObject(obj)
                        end
                        return -- break
                    end
                end
            end
            
            -- If object is not in hand and wasn't a card dropped on the purchase tablet, then it is an invalid drop.
            returnObject(obj)
        -- Return to hand if dropped object is owned
        elseif varOwner ~= nil then
            debugMsg('In condition elseif obj dropped is owned')
            
            returnObject(obj)
        else
            debugMsg('In condition else of obj drop')
            
            -- Return cards, gems, and nobles to their previous position
            returnObject(obj)
        end
    end
end

function activateEndTurnBttn()
    -- Validate this was called in a proper state
    if PREV_ACT[1] == 'rsrv_card' or PREV_ACT[1]:match('buy_card_') then
        
    elseif PREV_ACT[1] == 'rsrv_gem' then
        -- Validate length
        if #PREV_ACT == 3 then
            if PREV_ACT[2] ~= PREV_ACT[3] then
                return
            end
        elseif #PREV_ACT == 4 then
        
        end
    end
    local bttnInst = getObjectFromGUID(BUTTON_INST)
    
    -- playerColor = Turns.turn_color
    local handXform = Player[ACTIVE_PLYR].getHandTransform()
    local trgtPos = handXform['position']
    
    posZadj = 5.5
    if ACTIVE_PLYR == 'Blue' or ACTIVE_PLYR == 'Green' then
        posZadj = posZadj * -1
    end
    -- Adjust height to a visible location
    trgtPos[2] = -8
    trgtPos[3] = trgtPos[3] + posZadj
    
    local rotYadj = handXform['rotation'][2]
    local rotYadj = (rotYadj - 180) * -1
    bttnInst.createButton({
        label = 'End Turn', click_function = 'fireEndTurn', position = trgtPos,
        height = 1200, width = 2700, rotation = {0, rotYadj, 180},
        color = {0.65, 0, 0.1}, font_color = {1, 1, 1}, font_size = 500
    })
end

function activateResetBttn(inIdx)
    -- Show reset turn button for next player
    local bttnInst = getObjectFromGUID(BUTTON_INST)
    
    -- Get the not active players
    local allTheBttms = {}
    for i, v in ipairs(SEATED_PLYRS) do
        allTheBttms[i] = v
    end
    table.remove(allTheBttms, inIdx)
    
    -- Set the button instantiator to hidden from the bottoms
    bttnInst.attachInvisibleHider('bttmBlinder', true, allTheBttms)
    local handData = Player[ACTIVE_PLYR].getHandTransform()
    local trgtPos = handData['position']
    
    local posZadj = 3
    if ACTIVE_PLYR == 'Blue' or ACTIVE_PLYR == 'Green' then
        posZadj = posZadj * -1
    end
    
    -- Adjust height to a visible location
    trgtPos[2] = -8
    trgtPos[3] = trgtPos[3] + posZadj
    
    local rotYadj = handData['rotation'][2]
    local rotYadj = (rotYadj - 180) * -1
    
    bttnInst.createButton({
        label = 'Reset Turn', click_function = 'resetTurn', position = trgtPos,
        height = 600, width = 1500, rotation = {0, rotYadj, 180},
        color = {0, 0, 0}, font_color = {1, 1, 1}, font_size = 300
    })
end

function fireEndTurn(objButton, plyrColor, alt_click)
    debugMsg('In fireEndTurn')
    -- if plyrColor ~= Turns.turn_color then
    if plyrColor ~= ACTIVE_PLYR then
        return
    end
    
    -- Declare srcdTbl variable to be usable throughout function
    local srcdTbl
    
    -- If card was reserved, it'll be in player's hand
    if PREV_ACT[1] == 'rsrv_card' then
        srcdTbl = Player[ACTIVE_PLYR].getHandObjects()
    -- If card was bought, it'll be in the scoringZone
    else
        srcdTbl = getObjectFromGUID(SCOR_ZONE_GUID).getObjects()
    end
    
    -- Validate state is correct
    if (PREV_ACT[1] == 'rsrv_card' or PREV_ACT[1] == 'buy_card_raw') and PREV_ACT[2] ~= nil then
        local cardVector = PUBLIC_CARDS_TBL[PREV_ACT[2]]
        -- Get whether the Card is I, II, or III so we know what deck to draw from
        
        local cardGuid
        debugMsg('PREV_ACT[2] is ' .. PREV_ACT[2])
        
        for _, spwndObj in ipairs(srcdTbl) do
            local objName = spwndObj.getName()
            if objName:match('Card I+') then
                local cardId = getCardId(spwndObj)
                debugMsg('Found card with ID ' .. tostring(cardId))
                if cardId == PREV_ACT[2] then
                    debugMsg('Found card matching PREV_ACT[2]')
                    cardGuid = spwndObj.getGUID()
                    
                    debugMsg('cardGuid is ' .. cardGuid)
                    break
                end
            end
        end
        
        -- Determine whether Card is I, II, or III
        local cardType = getObjectFromGUID(cardGuid).getName()
        local v, r = cardType:gsub('Card (I+)','%1')
        
        -- Deck order is reversed from card/deck numbers
        if #v == 1 then
            deck = getObjectFromGUID(DECK_GUID_TBL[3])
        elseif #v == 3 then
            deck = getObjectFromGUID(DECK_GUID_TBL[1])
        else
            deck = getObjectFromGUID(DECK_GUID_TBL[2])
        end
        
        
        --local cardVector = PUBLIC_CARDS_TBL[PREV_ACT[2]]
        debugMsg('Drawing from Deck ' .. v)
        debugMsg('PREV_ACT[2] is ' .. tostring(PREV_ACT[2]))
        debugMsg('Target position is ' .. tostring(PUBLIC_CARDS_TBL[PREV_ACT[2]]))
        
        -- Draw cards to replace bought or reserved card
        local card = deck.takeObject({
            position = PUBLIC_CARDS_TBL[PREV_ACT[2]],
            rotation = rotation.oneEighty,
            smooth = false,
            callback_function = function(obj) updateCardTbl(obj, PUBLIC_CARDS_TBL[PREV_ACT[2]]) end
        })
        
        -- Remove bought or reserved card from the public table
        --PUBLIC_CARDS_TBL[PREV_ACT[2]] = nil
    elseif PREV_ACT[1] == 'rsrv_gem' then
        debugMsg('PREV_ACT[1] is \'rsrv_gem\'')
    end
    
    -- Check if a noble should be awarded, then update score, and lastly eval if we in the end game now
    if PREV_ACT[1] == 'buy_card_raw' or PREV_ACT[1] == 'buy_card_rsrvd' then
        debugMsg('Checking if a noble should visit.')
        
        -- Build out values for checking noble visitation
        local visitMeTbl = {
            ['Diamond'] = 0,
            ['Emerald'] = 0,
            ['Onyx'] = 0,
            ['Ruby'] = 0,
            ['Sapphire'] = 0
        }
        
        -- Variable to store point value of bought card
        local cardPts
        debugMsg('srcdTbl is ' .. tostring(srcdTbl))
        for _, spwndObj in ipairs(srcdTbl) do
            local objName = spwndObj.getName()
            if objName:match('Card I+') then
                local cardId = getCardId(spwndObj)
                local gemType = CARD_VALUE_TBL[cardId]['Gem']
                if cardId == PREV_ACT[2] then
                    cardPts = CARD_VALUE_TBL[cardId]['Points']
                end
                visitMeTbl[gemType] = visitMeTbl[gemType] + 1
            end
        end
        
        debugMsg('Iterating the AVAIL_NOBLES_TBL table')
        for kguid, gems in pairs(AVAIL_NOBLES_TBL) do
            local objNoble = getObjectFromGUID(kguid)
            
            local valid = 1
            for k, v in pairs(gems) do
                debugMsg(k .. ' is ' .. tostring(v))
                if v > visitMeTbl[k] then
                    debugMsg(ACTIVE_PLYR .. ' does not have enough ' .. k .. ' to get this noble hot and bothered.')
                    valid = 0
                    break
                end
            end
            
            if valid == 1 then
                -- Call positionObjects function to place Noble in proper location
                positionObjects(objNoble, NOBLE_CT_TBL, VISIT_POS_TBL)
                
                -- Clear noble from the global table
                AVAIL_NOBLES_TBL[kguid] = nil
                
                SCORE_TBL[ACTIVE_PLYR] = SCORE_TBL[ACTIVE_PLYR] + 3
                break
            end
        end
        
        debugMsg('Adding card\'s point value to player\'s score.')
        SCORE_TBL[ACTIVE_PLYR] = SCORE_TBL[ACTIVE_PLYR] + cardPts
        
        if SCORE_TBL[ACTIVE_PLYR] >= 15 then
            shout('FINAL ROUND')
            END_GAME_TURN = ACTIVE_PLYR
        end
        
        -- Update score board, unless it is the final round, in which case obfuscate it
        if END_GAME_TURN == nil then
            setScoringNote()
        else
            Notes.setNotes('')
        end
    end
    
    -- Clear state for next player
    PREV_ACT = { nil }
    objButton.clearButtons()
    
    -- Get index of current ACTIVE_PLYR
    local plyrIdx
    for i, v in ipairs(SEATED_PLYRS) do
        if v == ACTIVE_PLYR then
            plyrIdx = i
            break
        end
    end
    
    -- Next player index depends on if order is normal or reveresd and if at the end of the list.
    local adjIdx
    if SET_TURN_ORDER == 1 and plyrIdx == #SEATED_PLYRS then
        adjIdx = 1
    elseif SET_TURN_ORDER == -1 and plyrIdx == 1 then
        adjIdx = #SEATED_PLYRS
    else
        adjIdx = plyrIdx + SET_TURN_ORDER
    end
    
    -- Check if game is over
    if SEATED_PLYRS[adjIdx] == END_GAME_TURN then
        ACTIVE_PLYR = nil
        startLuaCoroutine(Global, finalTally())
        
        return
    end
    
    -- Set the new ACTIVE_PLYR
    ACTIVE_PLYR = SEATED_PLYRS[adjIdx]
    
    -- Send a message announcing the new player's turn
    shout('It is now ' .. Player[ACTIVE_PLYR].steam_name .. '\'s turn!')
    
    -- Move scoring zone to new active player
    setScoringZonePos('false')
    
    -- Show reset turn button for next player
    activateResetBttn(adjIdx)
end

function resetTurn(objButton, resetColor, alt_click)
    debugMsg('In resetTurn function')
    
    -- if resetColor ~= Turns.turn_color then
    if resetColor ~= ACTIVE_PLYR then
        return
    end
    
    if PREV_ACT[1] == nil then
        return
    end
    
    local firstAct = PREV_ACT[1]
    if firstAct == 'rsrv_card' or firstAct:match('buy_card_') then
        debugMsg('PREV_ACT[1] is a card action')
        
        -- Get objects in player's hand
        local handTbl = Player[resetColor].getHandObjects()
        
        -- local globalTbl = getAllObjects()
        local cardGuid
        local srcdTbl
        
        -- If card was reserved, it'll be in player's hand
        if firstAct == 'rsrv_card' then
            debugMsg('srcdTbl is player\'s hand objects')
            srcdTbl = handTbl
        -- If card was bought, it'll be in the scoringZone
        else
            debugMsg('srcdTbl is the scoring zone')
            -- local srcdTbl = getAllObjects()
            srcdTbl = getObjectFromGUID(SCOR_ZONE_GUID).getObjects()
        end
        
        debugMsg('PREV_ACT[2] is ' .. PREV_ACT[2])
        for _, spwndObj in ipairs(srcdTbl) do
            local objName = spwndObj.getName()
            if objName:match('Card I+') then
                local cardId = getCardId(spwndObj)
                debugMsg('Found card with ID ' .. tostring(cardId))
                if cardId == PREV_ACT[2] then
                    debugMsg('Found card matching PREV_ACT[2]')
                    cardGuid = spwndObj.getGUID()
                    
                    debugMsg('cardGuid is ' .. cardGuid)
                    break
                end
            end
        end
        debugMsg('cardGuid outside for loop: ' .. cardGuid)
        local objCard = getObjectFromGUID(cardGuid)
        -- globalTbl = nil
        
        if firstAct ~= 'buy_card_rsrvd' then
            debugMsg('Card was not bought from hand. Clearing owner variable.')
            objCard.setVar('Owner', nil)
        end
        
        if firstAct:match('buy_card_') then
            debugMsg('Card was bought, Clearing card settings, reseting CARD_CT_TBL, and returning money.')
            
            -- Clear Procured variable
            objCard.setVar('Procured', nil)
            
            -- Make card interactable again
            objCard.interactable = true
            
            -- Decrement CARD_CT_TBL so bought card positioning is not skewed
            CARD_CT_TBL[ACTIVE_PLYR] = CARD_CT_TBL[ACTIVE_PLYR] - 1
            
            -- Call returnMoney function
            returnMoney()
        else
            -- If player reserved a card, one gold token needs to be returned.
            for _, handObj in ipairs(handTbl) do
                local objName = handObj.getName()
                if objName == 'Gold' then
                    handObj.setVar('Owner', nil)
                    returnObject(handObj)
                    break
                end
            end
        end
        debugMsg('Attempting to return objCard')
        debugMsg(objCard)
        returnObject(objCard)
    elseif firstAct == 'rsrv_gem' then
        -- Loop through hand objects, clear owner and return object
        local lenPrevAct = #PREV_ACT
        debugMsg('lenPrevAct is ' .. lenPrevAct)
        local gemGuid
        for i = 2, lenPrevAct do
            debugMsg('i is ' .. i)
            local handTbl = Player[resetColor].getHandObjects()
            for _, handObj in ipairs(handTbl) do
                local objName = handObj.getName()
                local objGuid = handObj.getGUID()
                if objName == PREV_ACT[i] and objGuid ~= gemGuid then
                    handObj.setVar('Owner', nil)
                    returnObject(handObj)
                    if gemGuid == nil then
                        gemGuid = objGuid
                    end
                    Wait.frames(doNothing, 10)
                    break
                end
            end
        end
    end
    
    -- Check if end turn button is showing. Clear it if so.
    local noBttns = objButton.getButtons()
    
    if #noBttns == 2 then
        objButton.removeButton(1)
    end
    
    -- Set the turn state to nil
    PREV_ACT = { nil }
end

-- Function to return to sender if player clicks reset turn after buying a card
function returnMoney()
    debugMsg('In returnMoney function')
    
    -- Get positioning of ACTIVE_PLYR's hand
    local handXform = Player[ACTIVE_PLYR].getHandTransform()
    
    debugMsg('Iterating the value of PREV_ACT[3]')
    for k, v in pairs(PREV_ACT[3]) do
        if v ~= 0 then
            debugMsg('Value of ' .. k .. ' in PREV_ACT[3] is not zero. Returning that cash money. (Value: ' .. v .. ').')
            
            local gem_bag_guid = GEM_BAG_GUID_TBL[k]
            local gem_bag = getObjectFromGUID(gem_bag_guid)
            for i = v, 1, -1 do
                debugMsg('i is ' .. i)
                gem_bag.takeObject({
                    position = handXform['position'],
                    callback_function = function(obj) setGemOwner(obj, ACTIVE_PLYR) end,
                })
            end
        end
    end
end

function validateAction(varobj)
    debugMsg('In validateAction function')
    -- Get the object's Nickname value
    local objName = varobj.getName()
    
    -- Player can never take gold manually.
    if objName == 'Gold' then
        debugMsg('Players cannot manually take gold. Return false.')
        return false
    end
    
    -- If PREV_ACT[1] is nil, no actions have been taken, hence this should be allowed 99% of the time.
    if PREV_ACT[1] == nil then
        debugMsg('PREV_ACT[1] is null/nil/None. You know what this means regardless of Lua\'s terminology. (Python is better).')
        return true
    end
    
    -- If a card has been reserved or bought, no more actions can be taken.
    if PREV_ACT[1] == 'rsrv_card' or PREV_ACT[1]:match('buy_card_') then
        debugMsg('PREV_ACT[1] is either rsrv_card or buy_card_*, i.e. return false')
        return false
    end
    
    -- Check branching of taking gems
    if PREV_ACT[1] == 'rsrv_gem' then
        debugMsg('PREV_ACT[1] is rsrv_gem. Branching to further validate.')
        if varobj.name == 'Card' then
            debugMsg('Object being validated is not a gem. Return false.')
            return false
        end
        
        -- If length of PREV_ACT is greater than two, that means at least two gems have been taken.
        if #PREV_ACT > 2 then
            debugMsg('At least two gems have been taken.')
            -- If #PREV_ACT == 4 then three gems have been taken and nothing else can be done.
            if #PREV_ACT == 4 then
                debugMsg('Three gems have already been taken. Return false.')
                return false
            -- If gem 1 and gem 2 are the same, you are doneskis for the turn.
            elseif PREV_ACT[2] == PREV_ACT[3] then
                debugMsg('Two gems of the same type have already been taken. Return false.')
                return false
            -- If this is the third gem and type does not match gem 1 or gem 2
            elseif not ( objName == PREV_ACT[2] or objName == PREV_ACT[3] ) then
                debugMsg('Gem being validated is not the same type as Gem 1 or Gem 2. Return true.')
                return true
            else
                debugMsg('At least two gems have already been taken and the one condition this action would be validated was not met. Return false.')
                return false
            end
        -- If gem being processed is the same as previous gem, we have to check the stockpile count.
        elseif objName == PREV_ACT[2] then
            debugMsg('Gem being validated is the same type as Gem 1.')
            -- Get quantity in this specific gem's container
            local gem_bag_guid = GEM_BAG_GUID_TBL[objName]
            local gem_count = getObjectFromGUID(gem_bag_guid).getQuantity()
            
            if gem_count < 4 then
                debugMsg('Gem bag count would be ' .. gem_count .. '. Return false.')
                return false
            else
                debugMsg('Gem bag count would be sufficient. Return true.')
                return true
            end
        -- If none of the above conditions match, then this gem is the second taken and not the same type as the first.
        else
            debugMsg('No negative conditions for gem state have been matched. Return true.')
            return true
        end
    end
end

function positionObjects(inObject, countTbl, positionTbl)
    -- Increment countTbl to find where to place inObject
    countTbl[ACTIVE_PLYR] = countTbl[ACTIVE_PLYR] + 1
    local posTbl = {}
    for i, v in ipairs(positionTbl[countTbl[ACTIVE_PLYR]]) do
        posTbl[i] = v * XYZ_ADJ_TBL[ACTIVE_PLYR][i]
    end
    
    -- Change rotation value depending on the side of the table the player is on.
    if ACTIVE_PLYR == 'Red' or ACTIVE_PLYR == 'White' then
        inObject.setRotation({0, 180, 0})
    else
        inObject.setRotation({0, 0, 0})
    end
    
    inObject.setPosition(posTbl)
    inObject.interactable = false
end

function setGemOwner(objGem, varColor)
    objGem.setVar('Owner', varColor)
end

function setScoringZonePos(varScale)
    local scorZone = getObjectFromGUID(SCOR_ZONE_GUID)
    local handXform = Player[ACTIVE_PLYR].getHandTransform()
    local trgtPos = handXform['position']
    
    posZadj = 6.75
    if ACTIVE_PLYR == 'Blue' or ACTIVE_PLYR == 'Green' then
        posZadj = posZadj * -1
    end
    
    trgtPos[2] = -0.5
    trgtPos[3] = trgtPos[3] + posZadj
    
    scorZone.setPosition(trgtPos)
    if varScale == 'true' then
        scorZone.setScale({15.0, 5.0, 7.0})
    end
end

function setScoringNote()
    local scoreStr = string.format('%-50s\n', 'SCORES:')
    for k, v in pairs(SCORE_TBL) do
        local steamName = Player[k].steam_name
        scoreStr = string.format('%s  - %-35s%5s\n', scoreStr, steamName .. ':', v)
    end
    Notes.setNotes(scoreStr)
end

-- Function to playback at end of game
function finalTally()
    -- Build out scoreboard
    local scorBrd = {}
    local sc = 0
    for p, s in pairs(SCORE_TBL) do
        local ct = {p, tonumber(s)}
        sc = sc + 1
        table.insert(scorBrd, sc, ct)
    end
    
    -- Sort highest to lowest
    table.sort(scorBrd, function(a, b) return a[2] > b[2] end)
    
    if #SEATED_PLYRS == 4 then
        shout(string.format('In fourth place with %s points...', scorBrd[4][2]))
        local fourthSteamName = Player[scorBrd[4][1]].steam_name
        --Wait.time(function() doNothing() end, 5)
        
        waitSeconds(5)
        
        broadcastToAll(fourthSteamName .. '!', scorBrd[4][1])
        
        waitSeconds(3)
    end
    
    if #SEATED_PLYRS >= 3 then
        shout(string.format('In third place with %s points...', scorBrd[3][2]))
        local thirdSteamName = Player[scorBrd[3][1]].steam_name
        --Wait.time(function() doNothing() end, 5)
        
        
        waitSeconds(5)
        
        broadcastToAll(thirdSteamName .. '!', scorBrd[3][1])
        
        waitSeconds(3)
    end
    
    if #SEATED_PLYRS >= 2 then
        shout(string.format('In second place with %s points...', scorBrd[2][2]))
        local secondSteamName = Player[scorBrd[2][1]].steam_name
        
        
        waitSeconds(5)
        --Wait.time(function() shout(secondSteamName .. '!') end, 5)
        
        broadcastToAll(secondSteamName .. '!', scorBrd[2][1])
        
        waitSeconds(3)
        
    end
    shout(string.format('And in first place with %s points...', scorBrd[1][2]))
    local firstSteamName = Player[scorBrd[1][1]].steam_name
    
    Wait.time(function() shout('...') end, 3)
    
    
    -- Spawn objects in winner's color to celebrate
    -- spawnParams = {
        -- type = 'backgammon_piece_white',
        -- position          = {x=0, y=10, z=0},
        -- rotation          = {x=0, y=90, z=0},
        -- scale             = {x=1, y=1, z=1},
        -- callback_function = function(obj) spawn_callback(obj, scorBrd[1][1]) end
    -- }
    -- for i = 1, 50 do
        -- spawnObject(spawnParams)
    -- end
    
    Wait.time(function() broadcastToAll(firstSteamName .. '!!!', scorBrd[1][1]) end, 7)
    Wait.time(|| celebrateGoodTimes(scorBrd[1][1]), 7)
    
    -- flipTable()
end

function celebrateGoodTimes(in_color)
    for i = 1, 50 do
        
        spawnObject({
            type = 'go_game_piece_white',
            position          = {x=0, y=10, z=0},
            rotation          = {x=0, y=90, z=0},
            scale             = {x=1, y=1, z=1},
            callback_function = function(obj) spawn_callback(obj, in_color) end
        })
    end
end

function spawn_callback(object_spawned, color)
    seed = math.random(1, 6)
    if seed == 1 then
        varColor = 'Purple'
    elseif seed == 2 then
        varColor = 'Yellow'
    else
        varColor = color
    end
    local randX = math.random(15, 30)
    local randY = math.random(5, 10)
    local randZ = math.random(7, 15)
    
    object_spawned.bounciness = 1.0
    object_spawned.dynamic_friction = 0.2
    object_spawned.mass = 0.1
    object_spawned.static_friction = 0.2
    
    object_spawned.addForce({randX, randY, randZ})
    object_spawned.setColorTint(varColor)
end

-- Function to print messages if debugging is enabled
function debugMsg(in_msg)
    if DEBUG_VAR == 2 then
        print(in_msg)
    elseif DEBUG_VAR == 1 then
        log(in_msg)
    end
end

-- Allow host to enable debugging
function onChat(message, sender)
    if sender.admin == true then
        if message == '$debug == 2' and DEBUG_VAR ~= 2 then
            print('Debug mode has been set to 2. Verbose output will be printed.')
            DEBUG_VAR = 2
        elseif message == '$debug == 1' and DEBUG_VAR ~= 1 then
            print('Debug mode has been set to 2. Verbose output will be logged.')
            DEBUG_VAR = 1
        elseif message == '$debug == 0' and DEBUG_VAR ~= 0 then
            print('Debug mode has been disabled.')
            DEBUG_VAR = 0
        end
    end
end

TO_DO_LIST = [[
   TO DO: Items not specifically in this script but need to be done
        1) DONE: Card cost table -> how do I want to handle that?
        2) DONE: Pull Noble costs out from GMNotes in TS_Save_7.json -> Can these be in LUAScript attr? These shouldn't change unlike cards
        3) DONE: Get the positioning of the layered cards in TS_Save_7.json
        4) DONE: Switch names in card cost table from colors to gem names -> will allow for easier integration into existing code
        5) These are script specifc: 
            * DONE: build purchase
            * DONE: build reset turn buttons
            * DONE: orient purchase button to table side
            * DONE: State handler since I don't think built in sys will do what I want -> have to to update parts that use Turns.turn_color or maybe write to that variable?
            * DONE: Set DEBUG_VAR to false
        6) DONE: Use notes to display scores?
        
        Turn cleanup:
            1) DONE: Check nobles if a card was bought
            2) DONE: Replace card if one was reserved or bought raw
            3) DONE: Update player's score
            4) Check if there are any out of place gems
            5) DONE: Check if end game is triggered
            6) DONE: Clear end turn and reset turn buttons
            7) DONE: Reset PREV_ACT to { nil } -> Do this last because we lose state by doing this
            8) DONE: Show reset button for next player
]]