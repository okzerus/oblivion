execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.1,tag=!obl.item_frame.glowing] if entity @a[distance=..7] run function oblivion:tech/item_frame/glowing.enable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.2,tag=!obl.item_frame.glowing] if entity @a[distance=..15] run function oblivion:tech/item_frame/glowing.enable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.3,tag=!obl.item_frame.glowing] if entity @a[distance=..25] run function oblivion:tech/item_frame/glowing.enable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.1,tag=obl.item_frame.glowing] unless entity @a[distance=..7] run function oblivion:tech/item_frame/glowing.disable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.2,tag=obl.item_frame.glowing] unless entity @a[distance=..15] run function oblivion:tech/item_frame/glowing.disable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing_range.3,tag=obl.item_frame.glowing] unless entity @a[distance=..25] run function oblivion:tech/item_frame/glowing.disable
execute if entity @s[tag=obl.item_frame.glowing_nbt,tag=obl.item_frame.glowing] if block ~ ~ ~ air run function oblivion:tech/item_frame/glowing.redstone

execute if entity @s[tag=obl.item_frame.single_use,tag=!obl.item_frame.init] run function oblivion:tech/item_frame/single_use.init
execute if entity @s[tag=obl.item_frame.single_use,tag=obl.item_frame.init] unless data entity @s Item run function oblivion:tech/item_frame/single_use.remove



execute if entity @s[tag=obl.item_frame.cooldown] if score @s obl.item_frame.cd matches 1.. run scoreboard players remove @s obl.item_frame.cd 1
execute if entity @s[tag=obl.item_frame.cooldown] if score @s obl.item_frame.cd matches 0 run tag @s remove obl.item_frame.cooldown

execute if block ^ ^ ^-.5 minecraft:redstone_lamp[lit=true] if entity @s[tag=!obl.item_frame.executed,tag=!obl.item_frame.cooldown,nbt={Item:{tag:{obl.redstone.glowing_receiver:1b}}}] run function oblivion:tech/item_frame/glowing_receiver/mk1
execute if block ^ ^ ^-.5 minecraft:redstone_lamp[lit=true] if entity @s[tag=!obl.item_frame.executed,tag=!obl.item_frame.cooldown,nbt={Item:{tag:{obl.redstone.glowing_receiver:2b}}}] run function oblivion:tech/item_frame/glowing_receiver/mk2

execute unless entity @s[tag=obl.item_frame.dragon_egg_rotation] if entity @s[nbt={Item:{id:"minecraft:dragon_egg"}}] run function oblivion:tech/item_frame/dragon_egg/add
execute if entity @s[tag=obl.item_frame.dragon_egg_rotation] as @e[type=block_display,limit=1,sort=nearest,distance=..3] at @s run function oblivion:tech/item_frame/dragon_egg/rotation
execute if entity @s[tag=obl.item_frame.dragon_egg_rotation] unless entity @s[nbt={Item:{id:"minecraft:dragon_egg"}}] run function oblivion:tech/item_frame/dragon_egg/remove

execute if entity @s[tag=obl.item_frame.executed] unless block ^ ^ ^-.5 minecraft:redstone_lamp[lit=true] run tag @s remove obl.item_frame.executed