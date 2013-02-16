-- Things I wish computercraft had, but doesn't (yet)

-- get the turtle's currently selected slot
do
  local _select = turtle.select
  function turtle.select(slot)
    turtle.currentlySelectedSlot = slot
    _select(slot)
  end

  function turtle.getSelectedSlot()
    return turtle.currentlySelectedSlot
  end
end
