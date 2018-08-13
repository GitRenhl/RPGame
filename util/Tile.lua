local Tile = Class {}
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

-- Tile
function Tile:init()
    self.BLOCK_ID = {
        GRASS = 1,
        WATER = 2
    }
    self.blocks = {}
    self.blocks[self.BLOCK_ID.GRASS] = Block("Grass", "", 100, 255, 100)
    self.blocks[self.BLOCK_ID.WATER] = Block("Water", "", 100, 100, 255)
end

function Tile:render(block_id, x, y, scale)
    self.blocks[block_id]:render(x, y, scale)
end

-- AAA = {
--     BLOCK_ID = {
--         GRASS = 1,
--         WATER = 2
--     },
--     blocks = {},
--     render = function(block_id, x, y, scale)
--         AAA.blocks[block_id]:render(x, y, scale)
--     end
-- }

-- AAA.blocks[AAA.BLOCK_ID.GRASS] = Block("Grass", "")
-- AAA.blocks[AAA.BLOCK_ID.WATER] = Block("Water", "")

Tile = Tile()

return Tile
