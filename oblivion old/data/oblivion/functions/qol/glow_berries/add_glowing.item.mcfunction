function oblivion:qol/glow_berries/particles

data merge entity @e[type=item,sort=nearest,limit=1] {Glowing:1b}
tag @e[type=item,sort=nearest,limit=1] add obl.glow_berried
scoreboard players set @e[type=item,sort=nearest,limit=1] obl.glowing.cd 200

advancement grant @a[distance=..4] only oblivion:advancements/items/glowitem

scoreboard players remove @s obl.item.count 1
execute if score @s obl.item.count matches ..0 run kill @s
execute store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count