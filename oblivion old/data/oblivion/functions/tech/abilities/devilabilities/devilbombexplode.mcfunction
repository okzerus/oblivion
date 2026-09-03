kill @s
playsound minecraft:entity.vex.charge master @a ~ ~1.5 ~ 1 0.1
playsound minecraft:entity.wither.spawn master @a ~ ~1.5 ~ 1 2
particle flame ~ ~1.3 ~ 0 0 0 0.5 200 force
summon minecraft:creeper ~ ~1.5 ~ {ExplosionRadius:4,Fuse:0,ignited:1,Invulnerable:1b,Silent:1b,ArmorItems:[{},{},{},{id:magma_block,Count:1}],ArmorDropChances:[0f,0f,0f,0f]}