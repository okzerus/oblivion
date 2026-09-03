execute if score @s abilities matches 20 run playsound minecraft:entity.enderman.scare master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 20 run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1.5
execute if score @s abilities matches 20 run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 20..35 run particle minecraft:flame ~ ~.3 ~ 2 0 2 1 20
execute if score @s abilities matches 35 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 35 run tp @s ~ ~5 ~ ~ 50
execute if score @s abilities matches 35..130 run particle minecraft:falling_dust black_concrete ~ ~ ~ 0.3 0 0.3 0 15
execute if score @s abilities matches 35 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 35 at @s run data merge entity @s {NoAI:1b,Invulnerable:1b}

execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.spreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s at @a[tag=inbattlewithdevil] run summon armor_stand ~ ~ ~ {Tags:["obl.devilstand","obl.devilweakmeteor","obl.devilplmeteor"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 40 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 40 run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 5 1
execute if score @s abilities matches 40 run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 40 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150

execute if score @s abilities matches 41 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 40 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 41 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 41 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 50 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 50 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 50 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 50 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 50 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 50 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 51 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 50 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 51 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 51 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 60 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 60 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 60 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 60 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 60 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 60 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 61 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 60 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 61 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 61 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 70 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 70 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 70 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 70 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 70 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 70 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 71 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 70 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 71 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 71 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 80 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 80 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 80 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 80 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 80 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 80 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 81 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 80 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 81 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 81 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 90 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 90 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 90 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 90 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 90 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 90 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 91 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 90 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 91 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 91 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 100 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 100 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 100 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 100 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 100 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 100 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 101 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 100 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 101 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 101 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 110 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 110 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 110 run spreadplayers ~ ~ 0 30 false @e[type=minecraft:armor_stand,tag=obl.devilstand,tag=obl.spreadthis,distance=..100]
execute if score @s abilities matches 110 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 110 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 110 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor,tag=obl.devilplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @s abilities matches 111 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @s abilities matches 110 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 111 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @s abilities matches 111 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @s abilities matches 120 run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 120 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor] run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0 500
execute if score @s abilities matches 120 run kill @e[type=armor_stand,distance=..100,tag=obl.devilstand,tag=obl.devilweakmeteor]

execute if score @s abilities matches 130 run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute if score @s abilities matches 130 run tp @s ~ ~-5 ~
execute if score @s abilities matches 130 at @s run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if score @s abilities matches 130 at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5