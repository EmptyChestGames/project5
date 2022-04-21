PlayerPickupState = Class{__includes = Basestate}

function PlayerPickupState:init(player, dungeon)
	self.player = player
end
function PlayerPickupState:enter( ... )
	-- body
end
function  PlayerPickupState:update(params)
	self.player:changeAnimation('lift-' .. self.player.direction)
	if self.player.currentAnimation.timesPlayed > 0 then
		self.player.currentAnimation.timesPlayed = 0
		self.player:changeState('carry-idle')
	end
end
function PlayerPickupState:render()
	local anim = self.player.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
        math.floor(self.player.x - self.player.offsetX), math.floor(self.player.y - self.player.offsetY))
end
function PlayerPickupState:exit()
end