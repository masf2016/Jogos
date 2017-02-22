    mode ="fill"
    x = 40
    y = 40
    score = 5000
    width = 1
    height = 50

function love.load()
  guile  = love.graphics.newImage("images/lowPunch.png")
  guile2 = love.graphics.newQuad(0,40,54,82,guile:getDimensions());

  barProgress = love.graphics
  barProgressContorno = love.graphics
  barProgressFundo = love.graphics


  love.mouse.setVisible(false)



end

function love.draw()
  love.graphics.draw(guile,guile2,250,250,0,4,4)

   barProgressFundo.setColor(127, 255, 0) --verde
   barProgressFundo.rectangle( "fill", 40, 40, 664, 50 )

   barProgress.setColor(0, 0, 0) -- preto
   barProgress.rectangle( mode, x, y, width, height )



   barProgressContorno.setColor(255, 69, 0)
   barProgressContorno.rectangle( "line", 37, 37, 670, 55 )
   love.graphics.printf( "Press key 'P'", 40, 10,200, "left")
   love.graphics.printf( score, 200, 10,200, "left")



end

function love.update(dt)

  if love.keyboard.isDown('p') then
    if ((width+6) < 670.0) then
      width = width + (0.008*200)
      score = score - 12

    end
      barProgress.rectangle( mode, x, y, width, height)
  end
end
