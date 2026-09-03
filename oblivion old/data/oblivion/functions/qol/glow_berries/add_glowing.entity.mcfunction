execute as @e[type=#oblivion:all_mobs.no_player,limit=1,sort=nearest] unless entity @s[nbt={Glowing:1b}] at @s run function oblivion:qol/glow_berries/particles
execute as @e[type=#oblivion:all_mobs.no_player,limit=1,sort=nearest] unless entity @s[nbt={Glowing:1b}] run scoreboard players set @s obl.glowing.cd 200
execute as @e[type=#oblivion:all_mobs.no_player,limit=1,sort=nearest] unless entity @s[nbt={Glowing:1b}] run tag @s add obl.glow_berried
data merge entity @e[type=#oblivion:all_mobs.no_player,limit=1,sort=nearest] {Glowing:1b}

advancement grant @a[distance=..4] only oblivion:advancements/items/glowentity

scoreboard players remove @s obl.item.count 1
execute if score @s obl.item.count matches ..0 run kill @s
execute store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count