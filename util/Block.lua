local Block = Class {}

local last_id = 1
local function getID()
    last_id = last_id + 1
    return last_id
end

-- Block
function Block:init(name, img_src, collision)
    self.NAME = name
    self.ID = getID()
    self.img = love.graphics.newImage(img_src)
    self.collision = false
    if collision then
        self.collision = collision
    end
end

function Block:render(x, y, scale)
    love.graphics.draw(self.img, x, y)
end

return Block
