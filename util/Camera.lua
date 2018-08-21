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

function Camera:set_pos(x, y)
    self.x = x
    self.y = y
end

return Camera
