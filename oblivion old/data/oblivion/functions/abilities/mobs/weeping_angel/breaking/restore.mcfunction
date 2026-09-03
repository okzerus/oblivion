scoreboard players operation #id.temp obl.id = @s obl.id

execute if score @s obl.weeping_angel.broken_part matches 1 as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;297912466,274614739,-1316817711,2134341701],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkODA2ZjE5YTc1MjZmYzZmYTQ4ZjQyZjcwM2I5MGFkZDgxNDJkYWM3ZjM3YWQxYmUxYjRlZGNhYzViYTgzIn19fQ=="}]}}}
execute if score @s obl.weeping_angel.broken_part matches 2 as @e[type=armor_stand,tag=obl.weeping_angel.stand.elytra,predicate=oblivion:matching_score] run item replace entity @s armor.chest with elytra
execute if score @s obl.weeping_angel.broken_part matches 2 as @e[type=armor_stand,tag=!obl.weeping_angel.stand.elytra,predicate=oblivion:matching_score] run item replace entity @s armor.chest with leather_chestplate{display:{color:11579568}}
execute if score @s obl.weeping_angel.broken_part matches 3 as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run item replace entity @s armor.legs with leather_leggings{display:{color:11579568}}

execute if score @s obl.weeping_angel.broken_part matches 1 run particle block stone ~ ~.7 ~ 0.25 0.35 0.25 0 25
execute if score @s obl.weeping_angel.broken_part matches 2 run particle block stone ~ ~.5 ~ 0.25 0.3 0.25 0 25
execute if score @s obl.weeping_angel.broken_part matches 3 run particle block stone ~ ~.3 ~ 0.2 0.2 0.2 0 25

execute if score @s obl.weeping_angel.broken_part matches 1.. run playsound minecraft:block.stone.place hostile @a ~ ~ ~ 0.9 0.7
execute if score @s obl.weeping_angel.broken_part matches 1.. run playsound minecraft:block.deepslate.place hostile @a ~ ~ ~ 0.9 0.7
execute if score @s obl.weeping_angel.broken_part matches 1.. run playsound minecraft:block.deepslate.place hostile @a ~ ~ ~ 0.9 0.7

scoreboard players set @s obl.weeping_angel.breaking_process 0
execute if score @s obl.weeping_angel.broken_part matches 1.. run scoreboard players remove @s obl.weeping_angel.broken_part 1
execute unless score @s obl.weeping_angel.broken_part matches 0 run scoreboard players set @s obl.weeping_angel.restoring_cd 300
execute if score @s obl.weeping_angel.broken_part matches 0 run tag @s remove obl.weeping_angel.broken