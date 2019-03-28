-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

local snake_x = 15
local snake_y = 15

function add_apple()

end

function game_draw()
  love.graphics.setColor(1.0, 0.35, 0.4, 1.0)
  love.graphics.rectangle('fill', snake_x*26, snake_y*26, 30, 30, 10, 10)
  love.graphics.reset()
end

function game_update()
  
end

function game_restart()

end
