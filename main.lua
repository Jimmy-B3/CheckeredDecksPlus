--Clubs+Diamonds Checkered Deck
SMODS.Atlas{
key = "CD",
path = "RCD.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "CD",
    path = "RCD.png",
    loc_txt = {
        name = 'Checkered Deck (Clubs+Diamonds)',
        text = {
            'Start run with',
            '{C:attention}26{} {C:clubs}Clubs{} and',
            '{C:attention}26{} {C:diamonds}Diamonds{} in deck'
        },
        unlock = {
            'Win a run with',
            '{C:attention}Black Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "CD",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end,
    locked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_black'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_black' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_black') >= 1
    end
}

--Hearts+Diamonds Checkered Deck
SMODS.Atlas{
key = "HD",
path = "HD.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "HD",
    path = "HD.png",
    loc_txt = {
        name = 'Checkered Deck (Hearts+Diamonds)',
        text = {
            'Start run with',
            '{C:attention}26{} {C:hearts}Hearts{} and',
            '{C:attention}26{} {C:diamonds}Diamonds{} in deck'
        },
        unlock = {
            'Win a run with',
            '{C:attention}Black Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "HD",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end,
    locked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_black'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_black' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_black') >= 1
    end
}

--Spades+Diamonds Checkered Deck
SMODS.Atlas{
key = "SD",
path = "SD.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "SD",
    path = "SD.png",
    loc_txt = {
        name = 'Checkered Deck (Spades+Diamonds)',
        text = {
            'Start run with',
            '{C:attention}26{} {C:spades}Spades{} and',
            '{C:attention}26{} {C:diamonds}Diamonds{} in deck'
        },
        unlock = {
            'Win a run with',
            '{C:attention}Black Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "SD",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end,
    locked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_black'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_black' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_black') >= 1
    end
}

--Hearts+Clubs Checkered Deck
SMODS.Atlas{
key = "HC",
path = "HC.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "HC",
    path = "HC.png",
    loc_txt = {
        name = 'Checkered Deck (Hearts+Clubs)',
        text = {
            'Start run with',
            '{C:attention}26{} {C:hearts}Hearts{} and',
            '{C:attention}26{} {C:clubs}Clubs{} in deck'
        },
        unlock = {
            'Win a run with',
            '{C:attention}Black Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "HC",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Clubs')
                    end
                end
                return true
            end
        }))
    end,
    locked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_black'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_black' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_black') >= 1
    end
}

--Spades+Clubs Checkered Deck
SMODS.Atlas{
key = "SC",
path = "SC.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "SC",
    path = "SC.png",
    loc_txt = {
        name = 'Checkered Deck (Spades+Clubs)',
        text = {
            'Start run with',
            '{C:attention}26{} {C:spades}Spades{} and',
            '{C:attention}26{} {C:clubs}Clubs{} in deck'
        },
        unlock = {
            'Win a run with',
            '{C:attention}Black Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "SC",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Spades')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Clubs')
                    end
                end
                return true
            end
        }))
    end,
    locked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_black'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_black' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_black') >= 1
    end
}

--Spades Deck
SMODS.Atlas{
key = "S",
path = "S.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "S",
    path = "S.png",
    loc_txt = {
        name = 'Spades Deck',
        text = {
            'Start run with',
            '{C:attention}52{} {C:spades}Spades{} in deck'
        },
        unlock = {
            'Win a run with',
            'normal {C:attention}Checkered Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "S",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Spades')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Spades')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Spades')
                    end
                end
                return true
            end
        }))
    end,
    ked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_checkered'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_checkered' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_checkered') >= 1
    end
}  

--Hearts Deck
SMODS.Atlas{
key = "<3",
path = "H.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "<3",
    path = "H.png",
    loc_txt = {
        name = 'Hearts Deck',
        text = {
            'Start run with',
            '{C:attention}52{} {C:hearts}Hearts{} in deck'
        },
        unlock = {
            'Win a run with',
            'normal {C:attention}Checkered Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "<3",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Hearts')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Hearts')
                    end
                end
                return true
            end
        }))
    end,
    ked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_checkered'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_checkered' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_checkered') >= 1
    end
}

--Clubs Deck
SMODS.Atlas{
key = "C",
path = "C.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "C",
    path = "C.png",
    loc_txt = {
        name = 'Clubs Deck',
        text = {
            'Start run with',
            '{C:attention}52{} {C:clubs}Clubs{} in deck'
        },
        unlock = {
            'Win a run with',
            'normal {C:attention}Checkered Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "C",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Clubs')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('Clubs')
                    end
                end
                return true
            end
        }))
    end,
    ked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_checkered'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_checkered' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_checkered') >= 1
    end
}

--Diamonds Deck
SMODS.Atlas{
key = "D",
path = "D.png",
px = 71,
py = 95
}

SMODS.Back {
    key = "D",
    path = "D.png",
    loc_txt = {
        name = 'Diamonds Deck',
        text = {
            'Start run with',
            '{C:attention}52{} {C:diamonds}Diamonds{} in deck'
        },
        unlock = {
            'Win a run with',
            'normal {C:attention}Checkered Deck{}',
            'on any difficulty'
        },
    },
    pos = { x = 0, y = 0 },
    unlocked = false,
    atlas = "D",
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('Diamonds')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('Diamonds')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end,
    ked_loc_vars = function(self, info_queue, back)
        local other_name = localize('k_unknown')
        if G.P_CENTERS['b_checkered'].unlocked then
            other_name = localize { type = 'name_text', set = 'Back', key = 'b_checkered' }
        end

        return { vars = { other_name } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_deck' and get_deck_win_stake('b_checkered') >= 1
    end
}