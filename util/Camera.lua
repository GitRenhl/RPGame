local Camera = Class {}

function Camera:init(x, y)
    self.x = x or 0
    self.y = y or 0
end

function Camera:setx(arg)
    self.x = arg
end

function Camera:sety(arg)
    self.y = arg
end

function Camera:update(dt, player_pos_x, player_pos_y)
    self.x = player_pos_x - VIRTUAL.WIDTH / 2 + TILE_SCALE / 2
    self.y = player_pos_y - VIRTUAL.HIGHT / 2 + TILE_SCALE / 2
end

function Camera:set_pos(x, y)
    self.x = x
    self.y = y
end

return Camera
