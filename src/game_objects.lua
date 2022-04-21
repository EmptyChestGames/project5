--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GAME_OBJECT_DEFS = {
    ['switch'] = {
        type = 'switch',
        texture = 'switches',
        frame = 2,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'unpressed',
        states = {
            ['unpressed'] = {
                frame = 2
            },
            ['pressed'] = {
                frame = 1
            }
        }
    },
    ['heart'] = {
        type = 'heart',
        texture = 'hearts',
        frame = 5,
        width = 16,
        height = 16,
        solid = false,
        consumable = true,
        defaultState = 'active',
        states = {
            ['active'] = {
                frame = 5
            },
            ['inactive'] = {
                frame = 1
            }
        }
    },
    ['pot'] = {
        type = 'pot',
        texture = 'tiles',
        frame = 14,
        width = 16,
        height = 17,
        solid = true,
        projectile = false,
        dx = 0,
        dy = 0,
        defaultState = 'sit',
        states = {
            ['sit'] = {
                frame = 14
            },
            ['carry'] = {
                frame = 14
            },
            ['thrownleft'] = {
                frame = 14
            },
            ['thrownright'] = {
                frame = 14
            },
            ['thrownup'] = {
                frame = 14
            },
            ['throwndown'] = {
                frame = 14
            }
        }
    }
}