-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

local snake_x = 15
local snake_y = 15
local dir_x = 0
local dir_y = 0

local SIZE = 30
local apple_x = 0
local apple_y = 0
local tail_length = 0

up = false
down = false
left = false
right = false

function add_apple()
  math.randomseed(os.time())
  apple_x = math.random(SIZE-1)
  apple_y = math.random(SIZE-1)
end

function game_draw()
  love.graphics.setColor(0, 0.7, 0, 1.0)
  love.graphics.rectangle('fill', snake_x*SIZE, snake_y*SIZE, 30, 30, 10, 10)
  love.graphics.reset()
  
  love.graphics.setColor(0.8, 0.9, 0, 1.0)
  love.graphics.rectangle('fill', apple_x*SIZE, apple_y*SIZE, 30, 30, 10, 10)
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

  if snake_x == apple_x and snake_y == apple_y then
    add_apple()
    tail_length = tail_length + 1
  end
  
  -- Snake off-screen respawn
  if snake_x < 0 then
    snake_x = SIZE -1
  elseif snake_x > SIZE -1 then
    snake_x = 0
  elseif snake_y < 0 then
    snake_y = SIZE -1
  elseif snake_y > SIZE -1 then
    snake_y = 0
  end
end

function game_restart()

end
