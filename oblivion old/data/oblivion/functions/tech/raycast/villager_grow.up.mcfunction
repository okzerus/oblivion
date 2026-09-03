scoreboard players add @s obl.villager.grow.up 1

execute if block ~ ~ ~ minecraft:sunflower[half=upper] run scoreboard players add #sunflower_count oblivion 1
execute if block ~ ~ ~ minecraft:lilac[half=upper] run scoreboard players add #lilac_count oblivion 1
execute if block ~ ~ ~ minecraft:peony[half=upper] run scoreboard players add #speony_count oblivion 1
execute if block ~ ~ ~ minecraft:rose_bush[half=upper] run scoreboard players add #rose_bush_count oblivion 1
execute if block ~ ~ ~ minecraft:chorus_flower run scoreboard players add #chorus_count oblivion 1

execute if block ~ ~ ~ minecraft:wheat run setblock ~ ~ ~ minecraft:wheat[age=7]
execute if block ~ ~ ~ minecraft:melon_stem run setblock ~ ~ ~ minecraft:melon_stem[age=7]
execute if block ~ ~ ~ minecraft:pumpkin_stem run setblock ~ ~ ~ minecraft:pumpkin_stem[age=7]
execute if block ~ ~ ~ minecraft:potatoes run setblock ~ ~ ~ minecraft:potatoes[age=7]
execute if block ~ ~ ~ minecraft:carrots run setblock ~ ~ ~ minecraft:carrots[age=7]
execute if block ~ ~ ~ minecraft:beetroots run setblock ~ ~ ~ minecraft:beetroots[age=3]
execute if block ~ ~ ~ minecraft:sweet_berry_bush run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]
execute if block ~ ~ ~ minecraft:cocoa[facing=east] run setblock ~ ~ ~ minecraft:cocoa[age=2,facing=east]
execute if block ~ ~ ~ minecraft:cocoa[facing=north] run setblock ~ ~ ~ minecraft:cocoa[age=2,facing=north]
execute if block ~ ~ ~ minecraft:cocoa[facing=west] run setblock ~ ~ ~ minecraft:cocoa[age=2,facing=west]
execute if block ~ ~ ~ minecraft:cocoa[facing=south] run setblock ~ ~ ~ minecraft:cocoa[age=2,facing=south]
execute if block ~ ~ ~ minecraft:cave_vines[berries=false] run setblock ~ ~ ~ minecraft:cave_vines[berries=true]
execute if block ~ ~ ~ minecraft:cave_vines_plant[berries=false] run setblock ~ ~ ~ minecraft:cave_vines_plant[berries=true]
execute if block ~ ~ ~ minecraft:sugar_cane unless block ~ ~-1 ~ sugar_cane run fill ~ ~1 ~ ~ ~2 ~ minecraft:sugar_cane replace air
execute if block ~ ~ ~ minecraft:cactus unless block ~ ~-1 ~ cactus run fill ~ ~1 ~ ~ ~2 ~ minecraft:cactus replace air
execute if block ~ ~ ~ minecraft:vine[east=true] run fill ~ ~-1 ~ ~ ~-5 ~ minecraft:vine[east=true] replace air
execute if block ~ ~ ~ minecraft:vine[north=true] run fill ~ ~-1 ~ ~ ~-5 ~ minecraft:vine[north=true] replace air
execute if block ~ ~ ~ minecraft:vine[west=true] run fill ~ ~-1 ~ ~ ~-5 ~ minecraft:vine[west=true] replace air
execute if block ~ ~ ~ minecraft:vine[south=true] run fill ~ ~-1 ~ ~ ~-5 ~ minecraft:vine[south=true] replace air
execute if block ~ ~ ~ minecraft:bamboo_sapling run setblock ~ ~ ~ minecraft:bamboo[leaves=none]
execute if block ~ ~ ~ minecraft:bamboo[leaves=none] unless block ~ ~-8 ~ bamboo[leaves=none] run setblock ~ ~1 ~ minecraft:bamboo[leaves=none]
execute if block ~ ~ ~ minecraft:bamboo[leaves=none] if block ~ ~-8 ~ bamboo[leaves=none] run setblock ~ ~ ~ minecraft:bamboo[leaves=small]
execute if block ~ ~ ~ minecraft:bamboo[leaves=small] if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:bamboo[leaves=large]
execute if block ~ ~ ~ minecraft:chorus_plant if block ~ ~-1 ~ end_stone run setblock ~ ~ ~ minecraft:chorus_flower
execute if block ~ ~ ~ minecraft:chorus_plant unless block ~ ~-1 ~ end_stone run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chorus_flower unless block ~ ~-1 ~ end_stone run setblock ~ ~ ~ minecraft:air

execute unless score @s obl.villager.grow.up matches 31.. positioned ~ ~1 ~ run function oblivion:tech/raycast/villager_grow.up