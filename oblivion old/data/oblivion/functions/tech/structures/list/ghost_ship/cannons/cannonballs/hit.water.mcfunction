execute align y run playsound minecraft:entity.generic.splash hostile @a ~ ~1 ~ 1 0.8
execute align y run playsound minecraft:entity.generic.splash hostile @a ~ ~1 ~ 1 1
execute align y run playsound minecraft:entity.generic.splash hostile @a ~ ~1 ~ 1 0.6
execute align y run particle minecraft:splash ~ ~1 ~ 0.3 0.1 0.3 0 30
execute align y run particle minecraft:cloud ~ ~0.8 ~ 0 0.35 0 0 10
execute align y run particle minecraft:cloud ~ ~0.8 ~ 0 0.35 0 0 10
execute align y if entity @s[tag=obl.cannonball.flaming] run particle minecraft:smoke ~ ~1 ~ 0.3 0.1 0.3 0 15
execute if entity @s[tag=obl.cannonball.flaming] run playsound minecraft:block.fire.extinguish hostile @a ~ ~1 ~ 1 1.3

kill @s