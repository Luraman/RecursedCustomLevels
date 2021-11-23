local gear = { ["-"] = "pipeh", ["|"] = "pipev",
               ["}"] = "pipedr", ["{"] = "pipedl", [">"] = "pipeur", ["<"] = "pipeul",
               ["7"] = "mesh_ul", ["8"] = "mesh_u", ["9"] = "mesh_ur",
               ["4"] = "mesh_l",  ["5"] = "mesh", ["6"] = "mesh_r",
               ["1"] = "mesh_dl", ["2"] = "mesh_d", ["3"] = "mesh_dr",
               ["@"] = "clockwise", ["?"] = "widdershins",
               ["="] = "girder", o = "box", ["~"] = "ledge" }

function start(wet)
  ApplyTiles(gear, 0, 0, [[
......|...........|.
......|...........|.
......|...........|.
......|...........|.
......|...........|.
......|...........|.
.}----o====7889...|.
.|.........4556...|.
.|.........4556...|.
.|.........1223...|.
.|78889...........|.
.|45556...........|.
.|12223...........|.
.>--------{~~~~~~~|.
..........|.......|.
]])
  Spawn("player", 8, 5)
  Spawn("chest", 12, 5.5, "girders")
  Global("box", 15, 5.5)
  Spawn("key", 15.5, 4.5)
  Spawn("lock", 5.5, 8.5)
  Spawn("crystal", 3.5, 8.5)
end

function girders(wet)
ApplyTiles(gear, 0, 0, [[
.....46....|........
.....46.............
.....46.............
.....46.............
.....46~~~~|........
.....46....|........
.....46....|}---o...
.....13~...><.......
....................
...................~
..79....79....79....
..46....46....46....
..46....46....46....
--46----46----46----
..46....46....46....
]])
  Spawn("player", 13, 5)
  Spawn("yield", 15, 5)
  Spawn("lock", 11.5, 2.5)
  Global("key", 1, 12.5)
end

tiles = "tiles/clockwork"
pattern = "backgrounds/library"
dark = {start = {0.04, 0.03, 0.31}}
light = {start = {0.11, 0.26, 0.64}}