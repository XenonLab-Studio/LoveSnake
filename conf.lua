-- Title: LoveSnake
-- Love2D version: 11.2
-- Publisher: XenonLab Studio
-- Author: Stefano Peris

function love.conf(t)
  t.version = "11.0"                   -- The LÖVE version this game was made for (string)
  t.window.title = "LoveSnake"         -- The window title (string)
  t.console = false                    -- Attach a console (boolean, Windows only)
  t.window.resizable = false           -- Let the window be user-resizable (boolean)
  t.window.fullscreen = false          -- Enable fullscreen (boolean)
  t.window.vsync = 1                   -- Vertical sync mode (number)
  t.window.icon = "res/icon.png"       -- Filepath to an image to use as the window's icon (string)
  t.window.width = 800                 -- The window width (number)
  t.window.height = 600                -- The window height (number)
end
