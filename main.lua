--Author :
--+-+-+-+-+-+-+-+-+-+
--|I|A|m|T|e|r|r|o|r|
--+-+-+-+-+-+-+-+-+-+

-- Inspired by : https://www.gamecodeur.fr --- https://www.gamecodeur.fr/liste-ateliers/atelier-tilemap-love2d-deplacements-collisions/


-- CONFIG --------------------------------------------------------------------------------------------------------------

-- This line is used to display traces in the console during the execution
io.stdout:setvbuf('no')

-- This line is used to debug step by step in ZeroBrane Studio
if arg[#arg] == "-debug" then require("mobdebug").start() end

-- Prevents photoshop from filtering outlines of images when they are resized
-- Pixel art effect
love.graphics.setDefaultFilter("nearest")

-- Returns the distance between two points.
function math.dist(x1,y1, x2,y2) return ((x2-x1)^2+(y2-y1)^2)^0.5 end

local myGame = require("game")


-- LÖVE ---------------------------------------------------------------------------------------------------------------

function love.load()

  love.window.setMode(1024,768)
  love.graphics.setFont(love.graphics.newFont(24))

  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()

  myGame.Load()

end

function love.update(dt)
  myGame.Update(dt)
end

function love.draw()

  myGame.Draw()

end

function love.keypressed(key)

  print(key)

end
