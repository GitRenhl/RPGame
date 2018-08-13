Class = require "lib/class"
Tile = require "util/Tile"

Map = Class {}

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
end
