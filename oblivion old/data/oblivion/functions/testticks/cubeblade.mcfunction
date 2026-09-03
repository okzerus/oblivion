schedule function oblivion:testticks/cubeblade 6t
# Cubeblade
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:16000}}},sort=random,limit=1] at @s run particle minecraft:flame ~ ~ ~ 0 0.3 0 0.05 1 force
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:4004}}},sort=random,limit=1] at @s run particle minecraft:enchant ~ ~0.2 ~ .01 .01 .01 0.3 3
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:4005}}},sort=random,limit=1] at @s run particle minecraft:enchant ~ ~0.2 ~ .01 .01 .01 0.3 3
execute as @e[type=item,nbt={Item:{tag:{exhoebur:1b}}},sort=random,limit=1] at @s run particle minecraft:enchant ~ ~0.2 ~ .01 .01 .01 0.3 3
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:4004}}},sort=random,limit=1] at @s if entity @e[type=item,nbt={Item:{tag:{CustomModelData:4005}}},distance=..1,tag=!deny] if entity @e[type=item,nbt={Item:{tag:{exhoebur:1b}}},distance=..1] run function oblivion:items/cubebladenetherite
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:4004}}},sort=random,limit=1] at @s if entity @e[type=item,nbt={Item:{tag:{CustomModelData:4005}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{exhoebur:1b}}},distance=..1] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:netherite_block",Count:15b}}] run function oblivion:items/cubeblade