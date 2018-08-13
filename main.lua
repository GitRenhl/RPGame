push = require "lib/push"

require("util/Map")

WINDOW = {
    WIDTH = 1280,
    HIGHT = 1280 / 16 * 9
}
VIRTUAL = {
    WIDTH = 512,
    HIGHT = 512 / 16 * 9
}

debug_info = true

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    love.window.setTitle("Game Name")

    font_16 = love.graphics.newFont("font.ttf", 16)
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

function love.update(dt)
    -- body
end

function love.draw()
    push:apply("start")

    push:apply("end")
end