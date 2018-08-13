local Block = Class {}

local last_id = 1
local function getID()
    last_id = last_id + 1
    return last_id
end

-- Block
function Block:init(name, img_src, R, G, B, collision)
    self.NAME = name
    self.ID = getID()
    self.img = img_src
    self.color = {R, G, B}
    self.collision = false
    if collision then
        self.collision = collision
    end
end

function Block:render(x, y, scale)
    love.graphics.setColor(self.color[1] / 255, self.color[2] / 255, self.color[3] / 255, 1)
    love.graphics.rectangle("fill", x, y, scale, scale)
end

return Block
