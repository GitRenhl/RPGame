local Tile = require "util/Tile"

local Map = Class {}

function Map:init(width, height)
    self.WIDTH = width
    self.HEIGHT = height
    self.tiles = {}
end

function Map:load(source)
    for y = 1, self.HEIGHT do
        self.tiles[y] = {}
        for x = 1, self.WIDTH do
            self.tiles[y][x] = Tile.Grass.ID
        end
    end
    -- local i = 1
    -- for y = 1, self.HEIGHT do
    --     for x = 1, self.WIDTH do
    --         self.tiles[i] = Tile.Grass.ID
    --         i = i + 1
    --     end
    -- end
end

function Map:render(render_x, render_y, tile_x, tile_y, width, height)
    for tile_y = tile_y, height do
        for tile_x = tile_x, width do
            Tile:render(self.tiles[tile_x][tile_y], render_x, render_y, TILE_SCALE)
            render_x = render_x + TILE_SCALE
        end
        render_y = render_y + TILE_SCALE
    end
end
