Class = require "lib/class"

Tile = Class {}
Block = Class {}

local last_id = 1
local function getID()
    last_id = last_id + 1
    return last_id
end

-- Block
function Block:init(img_src)
    self.img = img_src
    self.color = {100, 255, 100}
    self.ID = getID()
end

function Block:render(x, y, w, h)
    love.graphics.rectangle("fill", x, y, w, h)
end

-- Tile
function Tile:init()
    self.Grass = Block("")
    self.Water = Block("")
end

function Tile:render(block_name)
end
