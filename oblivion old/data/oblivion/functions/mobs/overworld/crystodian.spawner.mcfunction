###   S P A W N
summon marker ~ ~ ~ {Tags:["obl.crystodian_spawner","obl.temp.modify"]}

###   M I S C
execute as @e[type=marker,tag=obl.temp.modify] run scoreboard players set @s obl.spawning_process 100
playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 0.7 1.3
particle block amethyst_block ~ ~ ~ 0.15 0 0.15 1 20
particle block calcite ~ ~ ~ 0.15 0 0.15 1 7
tag @e[type=marker] remove obl.temp.modify