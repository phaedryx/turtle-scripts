local function api()
  print([[
world() prints "Hello World!"
  ]])
end

local function world()
  print("Hello World!")
end

hello = {
  api   = api,
  world = world
}
