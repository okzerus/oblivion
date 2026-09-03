stopsound @s voice
execute at @s run playsound oblivion:ambient.black_death voice @s
scoreboard players set @s obl.music_sec 0
tag @s add obl.music_playing
tag @s add obl.music_playing.overworld
tag @s add obl.music_playing.ambient.black_death