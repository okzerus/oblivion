execute if score @s abilities matches 20 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 20 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 0.1

execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run kill @e[tag=obl.hungerstandline]
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @s at @a[tag=inbattlewithhunger] run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstandline","obl.hungerplayerstand"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstandline,tag=!obl.hungerplayerstand,distance=..100]
execute if score @s abilities matches 40 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 5 0.1

execute if score @s abilities matches 47 run gamerule mobGriefing false
execute if score @s abilities matches 47 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 50 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon evoker_fangs ~ ~ ~
execute if score @s abilities matches 53 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1,Invulnerable:1b}

execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstandline,distance=..100]
execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 30
execute if score @s abilities matches 60 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute as @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,tag=obl.hungerplayerstand] run tp @s @p[tag=inbattlewithhunger]

execute if score @s abilities matches 77 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 80 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon evoker_fangs ~ ~ ~
execute if score @s abilities matches 83 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1,Invulnerable:1b}

execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstandline,distance=..100]
execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 30
execute if score @s abilities matches 90 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute as @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,tag=obl.hungerplayerstand] run tp @s @p[tag=inbattlewithhunger]

execute if score @s abilities matches 107 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 110 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon evoker_fangs ~ ~ ~
execute if score @s abilities matches 113 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1,Invulnerable:1b}

execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstandline,distance=..100]
execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 30
execute if score @s abilities matches 120 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute as @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,tag=obl.hungerplayerstand] run tp @s @p[tag=inbattlewithhunger]

execute if score @s abilities matches 137 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 140 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon evoker_fangs ~ ~ ~
execute if score @s abilities matches 143 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1,Invulnerable:1b}

execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 30
execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run spreadplayers ~ ~ 0 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstandline,distance=..100]
execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 5 1.5
execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run particle minecraft:flame ~ ~1 ~ 0 0 0 0 30
execute if score @s abilities matches 150 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute as @e[type=armor_stand,distance=..100,tag=obl.hungerstandline,tag=obl.hungerplayerstand] run tp @s @p[tag=inbattlewithhunger]

execute if score @s abilities matches 167 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 170 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon evoker_fangs ~ ~ ~
execute if score @s abilities matches 173 run execute at @e[tag=obl.gianthungerdecor,limit=1] run execute at @e[type=armor_stand,distance=..100,tag=obl.hungerstandline] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1,Invulnerable:1b}
execute if score @s abilities matches 180 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 5 0.1
execute if score @s abilities matches 180 run execute at @e[tag=obl.gianthungerdecor,limit=1] run kill @e[type=armor_stand,distance=..100,tag=obl.hungerstandline]
execute if score @s abilities matches 180 run gamerule mobGriefing true