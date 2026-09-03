particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.2 20 normal
particle minecraft:flash ~ ~0.8 ~ 0 0 0 0 1 normal
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 0.6
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 0.9
playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a ~ ~ ~ 1.25 0.8
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a ~ ~ ~ 1.25 0.7
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a ~ ~ ~ 1.25 0.6

summon villager ~ ~ ~ {VillagerData:{type:savanna,profession:cartographer,level:99},CustomName:'[{"text":"???","color":"#9fe791"}]',CustomNameVisible:1b,Health:100,Invulnerable:1b,OnGround:0b,PersistenceRequired:1b,Tags:["obl.temp.modifying","obl.encounter_guide","obl.mob"],ActiveEffects:[{Id:24,Duration:100,ShowParticles:0b},{Id:28,Duration:100,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f}]}
execute as @e[type=villager,tag=obl.encounter_guide,limit=1,sort=nearest] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
data merge entity @e[type=villager,limit=1,sort=nearest,tag=obl.temp.modifying] {Motion:[0.0d,0.5d,0.0d]}
tag @e[type=villager] remove obl.temp.modifying

kill @s