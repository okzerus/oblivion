loot spawn ~ ~ ~ loot oblivion:items/accs/dolphins_pearl

playsound minecraft:entity.dolphin.play hostile @a ~ ~ ~ 1 0.6
playsound minecraft:entity.dolphin.eat hostile @a ~ ~ ~ 1 0.8
particle minecraft:heart ~ ~.3 ~ 1 1 1 1 5 normal

scoreboard players add @s obl.alpha_dolphin.pearl_count 1
execute if score @s obl.alpha_dolphin.pearl_count matches 2.. run tag @s add obl.alpha_dolphin.tamed

tag @s add obl.alpha_dolphin.pearl_chance
scoreboard players set @s obl.mob.ability_cd 20
scoreboard players set @s obl.alpha_dolphin.dropped_pearl 144000