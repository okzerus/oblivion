tag @s add obl.weeping_angel.broken
scoreboard players set @s obl.weeping_angel.breaking_process 0
scoreboard players add @s obl.weeping_angel.broken_part 1
scoreboard players set @s obl.weeping_angel.restoring_cd 600
scoreboard players operation #id.temp obl.id = @s obl.id

execute if score @s obl.weeping_angel.broken_part matches 1 as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run item replace entity @s armor.head with air
execute if score @s obl.weeping_angel.broken_part matches 2 as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run item replace entity @s armor.chest with air
execute if score @s obl.weeping_angel.broken_part matches 3 as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run item replace entity @s armor.legs with air

execute if score @s obl.weeping_angel.broken_part matches 1 run particle block stone ~ ~.7 ~ 0.25 0.35 0.25 0 25
execute if score @s obl.weeping_angel.broken_part matches 2 run particle block stone ~ ~.5 ~ 0.25 0.3 0.25 0 25
execute if score @s obl.weeping_angel.broken_part matches 3 run particle block stone ~ ~.3 ~ 0.2 0.2 0.2 0 25

playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.9 0.7
playsound minecraft:block.deepslate.break hostile @a ~ ~ ~ 0.9 0.7
playsound minecraft:block.deepslate.break hostile @a ~ ~ ~ 0.9 0.7