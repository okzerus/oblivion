playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 0.1
effect give @s slowness 10 1
effect give @s weakness 10 1
effect give @s mining_fatigue 10 4
effect give @e[tag=hunger,limit=1,sort=nearest] strength 10 1 true
effect give @e[tag=hunger,limit=1,sort=nearest] resistance 10 1 true
effect give @e[tag=hunger,limit=1,sort=nearest] speed 10 1 true