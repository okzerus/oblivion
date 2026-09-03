execute anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~180 0 positioned ^ ^.5 ^5.5 summon marker run function oblivion:abilities/mobs/dash.as_marker
data modify entity @s Motion set from storage oblivion:temp vector
execute unless score @s obl.alpha_dolphin.hurt_time matches 1.. run scoreboard players set @s obl.mob.ability_cd 200
execute if score @s obl.alpha_dolphin.hurt_time matches 1.. run scoreboard players set @s obl.mob.ability_cd 80

playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 0.7
playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ 1 0.9
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.8
particle minecraft:explosion ~ ~.3 ~ 1 1 1 1 5 normal
particle minecraft:nautilus ~ ~ ~ 0 0 0 5 100 normal

tag @s add obl.alpha_dolphin.dashing
scoreboard players set @s obl.alpha_dolphin.after_dash 20