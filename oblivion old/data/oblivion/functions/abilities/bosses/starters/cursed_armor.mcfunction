scoreboard players add @s oblivion 1

execute if score @s oblivion matches 1.. run particle enchant ~ ~.3 ~ 0.1 0.1 0.1 0.05 10 normal
execute if score @s oblivion matches 2 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 2 run tellraw @a[distance=..50] {"text":"Внимание! Вы пытаетесь призвать Проклятые доспехи!","color":"dark_gray"}
execute if score @s oblivion matches 4 run tellraw @a[distance=..50] {"text":"3","color":"gold"}
execute if score @s oblivion matches 4 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 1
execute if score @s oblivion matches 6 run tellraw @a[distance=..50] {"text":"2..","color":"red"}
execute if score @s oblivion matches 6 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.7
execute if score @s oblivion matches 8 run tellraw @a[distance=..50] {"text":"1...","color":"dark_red"}
execute if score @s oblivion matches 8 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.4
execute if score @s oblivion matches 10 run summon minecraft:marker ~ ~ ~ {Tags:["obl.summoning.cursed_armor"]}
execute if score @s oblivion matches 10 run playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 0.1
execute if score @s oblivion matches 10 run tag @s add obl.summoning
execute if score @s oblivion matches 10 run tag @a remove obl.can_skip_transition
execute if score @s oblivion matches 10 as @p[distance=..50] at @s unless entity @a[distance=.001..50] if score @s obl.boss.cursed_armor.attempts_overall matches 1.. run tag @s add obl.can_skip_transition