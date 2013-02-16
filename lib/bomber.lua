dofile("lib/coremod.lua")

bomber = {
  slot = 1,
  getTNTSlot = function()
    return bomber.slot
  end,
  setTNTSlot = function(slot)
    if slot < 1 or slot > 16 then
      print("bomber: invalid slot")
      return
    end
    bomber.slot = slot
  end,
  placeTNT = function()
    -- save original
    local currRedstone = redstone.getOutput("bottom")
    local currSlot = turtle.getSelectedSlot() -- from coremod
    -- bomb
    turtle.select(bomber.slot)
    redstone.setOutput("bottom", true)
    if not turtle.placeDown() then
      turtle.digDown()
      turtle.placeDown()
    end
    -- restore settings
    redstone.setOutput("bottom", currRedstone)
    turtle.select(currSlot)
  end
}
