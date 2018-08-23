local Player = Class {}

function Player:init(pos_x, pos_y)
    self.x = pos_x or 0
    self.y = pos_y or 0
    self.speed = 70
    self.texture = love.graphics.newImage("textures/character.png")
end

function Player:update(dt)
    if love.keyboard.wasPressed("w") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.wasPressed("s") then
        self.y = self.y + self.speed * dt
    end

    if love.keyboard.wasPressed("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.wasPressed("d") then
        self.x = self.x + self.speed * dt
    end
end

function Player:getX()
    return self.x
end

function Player:getY()
    return self.y
end

function Player:render(x, y)
    -- love.graphics.rectangle("fill", x, y, TILE_SCALE, TILE_SCALE)
    love.graphics.draw(self.texture, x, y)
end

return Player
