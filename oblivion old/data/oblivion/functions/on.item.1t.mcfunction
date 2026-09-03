
execute if entity @s[nbt={Item:{tag:{CustomModelData:30002}}}] at @s unless entity @s[nbt={Item:{tag:{obl.activated:1b}}}] unless entity @a[distance=..1.5] run data merge entity @s {PickupDelay:-1}
execute if entity @s[nbt={Item:{tag:{CustomModelData:30002}}}] at @s unless entity @s[nbt={Item:{tag:{obl.activated:1b}}}] if entity @a[distance=..1.5] run data merge entity @s {PickupDelay:1,Item:{tag:{obl.activated: 1b, display: {Lore: ['{"italic":true,"color":"gray","text":"Легенда о Проклятом рыцаре"}', '{"italic":false,"color":"gray","text":""}', '{"italic":false,"color":"gray","text":"Бросьте, чтобы пробудить:"}', '{"italic":false,"color":"#349C43","text":"Проклятые доспехи"}', '{"italic":false,"color":"gray","text":""}', '{"italic":false,"color":"gray","text":"Может быть призван только ночью."}', '{"italic":false,"color":"gray","text":""}', '{"italic":false,"color":"gold","text":"Требуемый уровень: 1"}']}}}}

###   I T E M   M A N I P U L A T I O N
execute store result score @s obl.item.count run data get entity @s Item.Count
execute if entity @s[tag=!obl.item.modified] if entity @s[nbt={Item:{id:"minecraft:glow_berries"}}] run tag @s add obl.item.glow_berries
execute if entity @s[tag=!obl.item.modified] if entity @s[nbt={Item:{id:"minecraft:emerald"}}] run tag @s add obl.item.emerald
execute if entity @s[tag=!obl.item.modified] if entity @s[nbt={Item:{id:"minecraft:emerald_block"}}] run tag @s add obl.item.emerald_block
execute if entity @s[tag=!obl.item.modified] run tag @s add obl.item.modified

execute if entity @s[type=item,tag=obl.item.glow_berries] at @e[type=item,distance=..1,tag=!obl.glow_berried,tag=!obl.item.glow_berries] run function oblivion:qol/glow_berries/add_glowing.item
execute if entity @s[type=item,tag=obl.item.glow_berries] at @e[type=#oblivion:all_mobs.no_player,type=!wither,type=!ender_dragon,distance=..1,tag=!obl.glow_berried] run function oblivion:qol/glow_berries/add_glowing.entity
execute if entity @s[type=item,tag=obl.glow_berried] at @s run function oblivion:qol/glow_berries/tick