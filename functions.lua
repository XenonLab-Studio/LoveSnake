-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

local snake_x = 15
local snake_y = 15
local dir_x = 0
local dir_y = 0

up = false
down = false
left = false
right = false

function add_apple()

end

function game_draw()
  love.graphics.setColor(1.0, 0.35, 0.4, 1.0)
  love.graphics.rectangle('fill', snake_x*26, snake_y*26, 30, 30, 10, 10)
  love.graphics.reset()
end

function game_update()
  if up then
    dir_x, dir_y = 0, -1
  elseif down then
    dir_x, dir_y = 0, 1
  elseif left then
    dir_x, dir_y = -1, 0
  elseif right then
    dir_x, dir_y = 1, 0
    end

snake_x = snake_x + dir_x
snake_y = snake_y + dir_y
end

function game_restart()

end
