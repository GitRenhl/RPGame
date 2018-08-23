Class = require("lib/class")
push = require "lib/push"

Camera = require("util/Camera")
Map = require("util/Map")
Player = require("util/Player")

WINDOW = {
    WIDTH = 1280,
    HIGHT = 1280 / 16 * 9
}
VIRTUAL = {
    WIDTH = 512,
    HIGHT = 512 / 16 * 9
}

TILE_SCALE = 16

debug_info = true

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Game Name")

    math.randomseed(os.time())

    font_16 = love.graphics.newFont("fonts/font.ttf", 16)
    love.graphics.setFont(font_16)

    push:setupScreen(
        VIRTUAL.WIDTH,
        VIRTUAL.HIGHT,
        WINDOW.WIDTH,
        WINDOW.HIGHT,
        {
            fullscreen = false,
            resizable = true,
            vsync = true
        }
    )
    map = Map(100, 100)
    map:load()
    camera = Camera(0, 0)
    player = Player()
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    elseif key == "f1" then
        debug_info = not debug_info
    end
end

function love.keyboard.wasPressed(key)
    return love.keyboard.isDown(key)
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    push:apply("start")

    map:render_auto(0 + camera.x, 0 + camera.y, 0, 0)
    player:render(player.x, player.y)

    displayFPS()

    push:apply("end")
end

function displayFPS()
    love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 10)
end
