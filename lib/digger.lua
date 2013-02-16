Digger = {
  turn = function(x)
    if x%2 == 1 then
      turtle.turnRight()
    else
      turtle.turnLeft()
    end
    turtle.dig()
    turtle.forward()
    if x%2 == 1 then
      turtle.turnRight()
    else
      turtle.turnLeft()
    end   
  end,
  digLayer = function(length, width)
    for i = 1,width do
      for j = 1,length-1 do
        turtle.dig()
        turtle.forward()
      end
      Digger.turn(i)
    end
  end,
  hole = function(length, width, depth)
    if length < 1 or width < 1 or depth < 1 then
      print("invalid hole dimensions")
      return
    end
  end
}
