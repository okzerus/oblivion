execute if score @e[tag=devil,limit=1] abilities matches 20 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 20 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 20 run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 20 run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 20 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150

execute if score @e[tag=devil,limit=1] abilities matches 40 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 39 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 40 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 40 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 60 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 60 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 60 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 60 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 60 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 60 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 80 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 79 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 80 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 80 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 100 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 100 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 100 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 100 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 100 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 100 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 120 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 119 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 120 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 120 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 140 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 140 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 140 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 140 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 140 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 140 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 160 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 159 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 160 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 160 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 180 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 180 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 180 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 180 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 180 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 180 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 200 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 199 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 200 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 200 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 220 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 220 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 220 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 220 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 220 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 220 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 240 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 239 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 240 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 240 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 260 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 260 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 260 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 260 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 260 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 260 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 280 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 279 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 280 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 280 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 300 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 300 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 300 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 300 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 300 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 300 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 300 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 299 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 300 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 300 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 320 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 320 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 320 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 320 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 320 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 320 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 340 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 339 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 340 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 340 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 360 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 360 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 360 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 360 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 360 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 360 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 380 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 379 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 380 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 380 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 400 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 400 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 400 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 400 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 400 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 400 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 420 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 419 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 420 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 420 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 440 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 440 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 440 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 440 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 440 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 440 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 460 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 459 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 460 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 460 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}

execute if score @e[tag=devil,limit=1] abilities matches 480 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 480 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 480 run spreadplayers ~ ~ 20 50 false @e[type=minecraft:armor_stand,tag=obl.devilcubestand,tag=obl.cubespreadthis,distance=..100]
execute if score @e[tag=devil,limit=1] abilities matches 480 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @e[tag=devil,limit=1] abilities matches 480 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @e[tag=devil,limit=1] abilities matches 480 run execute as @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor,tag=obl.devilcubeplmeteor] run tp @s @p[tag=inbattlewithdevil]

execute if score @e[tag=devil,limit=1] abilities matches 500 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 1
execute if score @e[tag=devil,limit=1] abilities matches 499 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 5 0.1
execute if score @e[tag=devil,limit=1] abilities matches 500 run particle minecraft:block magma_block ~ ~1 ~ 0.3 0.6 0.3 0.2 150
execute if score @e[tag=devil,limit=1] abilities matches 500 run execute at @e[type=armor_stand,distance=..100,tag=obl.devilcubestand,tag=obl.devilcubemeteor] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:4}