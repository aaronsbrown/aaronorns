-- many tomorrows
-- aaronorns study 1

engine.name = "TestSine"

function init()
  position = 0
  volume = .6
  engine.hz(333)
  engine.amp(.1)
  print("the end and the beginning they are the same.")
end

function key(n,z)
  if n == 3 then
    engine.hz(100 + (100 * z*math.random(10))/6)
  end
  
  if n == 2 then
    engine.hz(600 + 100 * z*math.random(10))
  end
end

function enc(n,d)
  print("encoder " .. n .. " == " .. d)
end

function enc(n,d)
  if n == 3 then
    position = position + d
    print("encoder 3 at position: " .. position)
  end
 
  if n == 2 then
    volume = volume + d*.1
    print("volume = " .. volume )
    if volume <= 0 then
      volume = 0 
    else     
      engine.amp( volume )
    end
  end
    
end