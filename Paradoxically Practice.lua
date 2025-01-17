-- Inflexible chest

local outrun = { o = "box", O = "monobox",
                 T = "pave", x = "ceil", ["|"] = "pillar",
                 ["-"] = "ledge", [":"] = "shroom1", [","] = "shroom2", [";"] = "shroom3",
                 ["7"] = "block_ul", ["8"] = "block_u", ["9"] = "block_ur",
                 ["4"] = "block_l", ["5"] = "block", ["6"] = "block_r" }

local glitch = { o = "glitch", [">"] = "glitchd", ["-"] = "glitchledge" }

function A2()
  ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxx|55|
|...............|55|
|...............|55|
9...............|55|
6...............oxxo
6..................|
6..................|
6...,:;............|
8888889............|
5555556...........,|
5555556.........7888
5555556;:.......4555
5555789--.......4555
5555456.........4555
5555456TTT------4555
]])
  Spawn("player", 8.5, 13)
  Spawn("chest", 3.5, 7.5, "crystal")
end

function start()
  ApplyTiles(outrun, 0, 0, [[
|...|..............|
|...|..............|
|...|..............|
|xo.o.........oo...|
|..................7
|........O.........4
|..................4
88889..............4
55556............788
95556............455
6xxxo...O.......7888
6...............4555
6.............788888
6,;:.,:,......455555
889---TTTTTTTT455555
]])
  Spawn("player", 2, 2)
  Global("chest", 15, 2.5, "start")
  Spawn("chest", 18, 7.5, "A2")
  Spawn("box", 2.5, 13.5)
  Spawn("lock", 4.5, 12.5)
  Global("key", 2.5, 6.5)
end

function crystal()
  ApplyTiles(outrun, 0, 0, [[
xxxxxxxxxxxxxxxx|55|
|...............|55|
|...............|55|
9...............|55|
6...............oxxo
6..................|
6..................|
6...,:;............|
8888889............|
5555556...........,|
5555556.........7888
5555556;:.......4555
555578889.......4555
555545556.......4555
5555455568889TTT4555
]])

  Spawn("player", 14, 13)
  Spawn("crystal", 13.5, 7.5)
end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooo.ooooooo.ooo
oooooooooooooooooooo
oo.................o
oo.................o
oo.................o
oo........oooooooooo
oo........oooooooooo
oo.................o
oo.................o
oo.................o
oooooooooooooooooooo
oo.ooooooooooooo.ooo
ooooooooooo.oooooooo
oooooooooooooooooooo
]])

  Spawn("player", 3.4, 10)
  Spawn("key", 6.1, 10.5)
  Spawn("chest", 8.0, 10.5, "dungeon")
  
  Spawn("lock", 11, 4.5)
  Global("lock", 12.5, 4.5)
  Spawn("lock", 14, 4.5)
  Spawn("lock", 15.5, 4.5)
  Spawn("diamond", 17.5, 4.5)
  
  Spawn("lock", 11, 9.5)
  Global("lock", 13.25, 9.5)
  Spawn("lock", 15.5, 9.5)
  Global("fan", 17.5, 10.5)
  
  Spawn("record", 4.6, 10.5, "sounds/voices/v5r")

end

function dungeon()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooo...........>oooo
oooo............oooo
oooo............oooo
oooo............oooo
oooo............oooo
oooooooooooooooooooo
oooooooo>ooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 6.1, 9)
  Global("chest", 14.3, 9.5, "dungeon")
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { start = {0.04, 0.08, 0.12}, reject = {0.06, 0.17, 0.21} }
light = { start = {0.06, 0.17, 0.21}, reject = {0.1, 0.25, 0.33} }

