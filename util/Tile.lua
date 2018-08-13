local Tile = Class {}
local Block = require "util/Block"

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
