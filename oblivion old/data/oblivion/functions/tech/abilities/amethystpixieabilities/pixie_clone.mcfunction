scoreboard players add @s abilities 1

execute if score @s abilities matches 50 run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.pixie_swing"]}
execute if score @s abilities matches 50 run tag @s add obl.pixieclone.attacking
execute if score @s abilities matches 50 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 50 run scoreboard players set @s abilities 0