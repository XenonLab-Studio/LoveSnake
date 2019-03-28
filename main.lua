-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

require ('functions')

function love.load()
  love.window.setPosition(390, 150, 1)
  love.graphics.newFont("res/PressStart2P.ttf", 25) -- the number denotes the font size
  
  interval = 20
  add_apple()
end

function love.draw()
  game_draw()
  love.graphics.printf("Press SPACEBAR to start.",300, 300, 200,"center") -- center your text around x = 200/2 + 100 = 200
end

function love.update()
  -- Apply a range for moving by simulating a game grid.
  -- the "interval = 20" value indicates the displacement pixels.
  interval = interval - 1
  if interval < 0 then
    game_update()
    interval = 20
  end
end

function love.keypressed(key)
  -- press ESC to close the window
  if key == 'escape' then
    love.event.quit()
  elseif key == 'up' then
    up, down, left, right = true, false, false, false
  elseif key == 'down' then
    up, down, left, right = false, true, false, false
  elseif key == 'left' then
    up, down, left, right = false, false, true, false
  elseif key == 'right' then
    up, down, left, right = false, false, false, true
  end
end
