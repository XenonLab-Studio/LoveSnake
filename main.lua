-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

function love.load()
  love.window.setPosition(500, 50, 1)
  love.graphics.newFont("res/PressStart2P.ttf", 25) -- the number denotes the font size
end

function love.draw()
  love.graphics.printf("Press SPACEBAR to start.",300, 300, 200,"center") -- center your text around x = 200/2 + 100 = 200
end

function love.update()

end

function love.keypressed(key)
  -- press ESC to close the window
  if key == 'escape' then
    love.event.quit()
  end
end
