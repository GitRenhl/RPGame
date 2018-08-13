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
            self.tiles[y][x] = math.random(1, 2)
        end
    end
end

function Map:get_tile(x, y)
    return self.tiles[y][x]
end

function Map:render(render_x, render_y, tile_x, tile_y, width, height)
    local r_x = render_x
    for t_y = tile_y + 1, height do
        for t_x = tile_x + 1, width do
            Tile:render(self:get_tile(t_x, t_y), r_x, render_y, TILE_SCALE)
            r_x = r_x + TILE_SCALE
        end
        render_y = render_y + TILE_SCALE
        r_x = render_x
    end
end

function Map:render_auto(render_x, render_y, tile_x, tile_y)
    local r_x = render_x
    for t_y = tile_y + 1, VIRTUAL.HIGHT / TILE_SCALE do
        for t_x = tile_x + 1, VIRTUAL.WIDTH / TILE_SCALE do
            Tile:render(self:get_tile(t_x, t_y), r_x, render_y, TILE_SCALE)
            r_x = r_x + TILE_SCALE
        end
        render_y = render_y + TILE_SCALE
        r_x = render_x
    end
end

return Map
