--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Projectile = Class{}

function Projectile:init(def, x, y)
    -- string identifying this projectile type
    self.type = def.type

    self.texture = def.texture
    self.frame = def.frame or 1

    -- attributes
    self.damage = def.damage
    self.range = def.range
    self.speed = def.speed

    -- dimensions
    self.x = x
    self.y = y
    self.dx = dx
    self.dy = dy
    self.width = def.width
    self.height = def.height

    -- default empty onCollide callback
    self.onCollide = function() end
end

function Projectile:update(dt)
end
function Projectile:render(adjacentOffsetX, adjacentOffsetY)
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.frame],
        self.x + adjacentOffsetX, self.y + adjacentOffsetY)
end