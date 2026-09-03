tag @s add obl.storm_bottle.double_jumped
tp @s @s
effect give @s minecraft:slow_falling 1 0 true
effect give @s minecraft:levitation 1 50 true
scoreboard players set @s obl.storm_bottle.tick 0

playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 0.7 0.8
particle minecraft:block sand ~ ~.05 ~ 0.2 0 0.2 0 20 normal
particle minecraft:falling_dust sand ~ ~.05 ~ 0.3 0 0.3 0 40 normal