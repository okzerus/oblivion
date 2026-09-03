scoreboard players add @s obl.music_sec 1

execute if entity @s[tag=obl.music_playing.cursed_armor,scores={obl.music_sec=253..}] run function oblivion:music/playing/loop/cursed_armor
execute if entity @s[tag=obl.music_playing.ambient.black_death,scores={obl.music_sec=106..}] run function oblivion:music/playing/loop/ambient.black_death
execute if entity @s[tag=obl.music_playing.black_death,scores={obl.music_sec=356..}] run function oblivion:music/playing/loop/black_death
execute if entity @s[tag=obl.music_playing.ambient.fallen_angel,scores={obl.music_sec=351..}] run function oblivion:music/playing/loop/ambient.fallen_angel
execute if entity @s[tag=obl.music_playing.fallen_angel,scores={obl.music_sec=231..}] run function oblivion:music/playing/loop/fallen_angel
execute if entity @s[tag=obl.music_playing.ambient.the_forge,scores={obl.music_sec=315..}] run function oblivion:music/playing/loop/ambient.the_forge

execute if entity @s[tag=obl.music_playing.overworld] at @s unless dimension minecraft:overworld run function oblivion:music/end
execute if entity @s[tag=obl.music_playing.nether] at @s unless dimension minecraft:the_nether run function oblivion:music/end
execute if entity @s[tag=obl.music_playing.end] at @s unless dimension minecraft:the_end run function oblivion:music/end