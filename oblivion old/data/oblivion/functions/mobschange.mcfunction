execute as @e[type=armor_stand,tag=yamatostand] at @s if entity @a[scores={obl.difficulty=11..},distance=..20] run data merge entity @s {DisabledSlots:4079166}
execute as @e[type=armor_stand,tag=yamatostand] at @s unless entity @a[scores={obl.difficulty=11..},distance=..20] run data merge entity @s {DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=yamatostand] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:netherite_sword"},{}]}] run kill @s
execute as @e[type=armor_stand,tag=muramasastand] at @s if entity @a[scores={obl.difficulty=11..},distance=..20] unless entity @s[nbt={HandItems:[{id:"minecraft:netherite_sword"},{}]}] run data merge entity @s {DisabledSlots:4079166}
execute as @e[type=armor_stand,tag=muramasastand] at @s unless entity @a[scores={obl.difficulty=11..},distance=..20] run data merge entity @s {DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=muramasastand] if entity @s[nbt={HandItems:[{id:"minecraft:netherite_sword"},{}]}] run data merge entity @s {DisabledSlots:4144959}
