kill @e[type=block_display,limit=1,sort=nearest,tag=obl.dragon_egg_rotation,distance=..3]
playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 0.7
particle minecraft:enchant ~ ~.5 ~ 0 0 0 1 30 normal
tag @s remove obl.item_frame.dragon_egg_rotation