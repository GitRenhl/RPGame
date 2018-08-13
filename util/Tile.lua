local Tile = Class {}
local Block = require "util/Block"

-- Tile
function Tile:init()
    self.BLOCK_ID = {
        GRASS = 1,
        WATER = 2
    }
    self.blocks = {}
    self.blocks[self.BLOCK_ID.GRASS] = Block("Grass", "textures/grass.png")
    self.blocks[self.BLOCK_ID.WATER] = Block("Water", "textures/water.png")
end

function Tile:render(block_id, x, y, scale)
    self.blocks[block_id]:render(x, y, scale)
end

Tile = Tile()

return Tile
