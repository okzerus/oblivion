function oblivion:tech/altars/disabled
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.5
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.55
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.6
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.65
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.75
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.8
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.85
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.9
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 0.95
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 0.9
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1

particle minecraft:flame ~ ~ ~ 0 0 0 0.3 500
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.3 500


effect give @a[distance=..20] slowness 10 1 true
effect give @a[distance=..20] darkness 10 1 true
effect give @a[distance=..20] weakness 10 1 true
effect give @a[distance=..20] mining_fatigue 10 1 true

execute at @e[type=marker,tag=obl.altar.summoner,distance=..10] run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Дух Забвения"}]',Health:30,PersistenceRequired:1b,Silent:1b,Tags:["obl.1tickparticle","obl.mob","obl.dontreplace","obl.oblivionspirit"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:30f}]}
execute at @e[type=marker,tag=obl.altar.summoner,distance=..10] run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Дух Забвения"}]',Health:30,PersistenceRequired:1b,Silent:1b,Tags:["obl.1tickparticle","obl.mob","obl.dontreplace","obl.oblivionspirit"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:30f}]}
execute at @e[type=marker,tag=obl.altar.summoner,distance=..10] run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Дух Забвения"}]',Health:30,PersistenceRequired:1b,Silent:1b,Tags:["obl.1tickparticle","obl.mob","obl.dontreplace","obl.oblivionspirit"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:30f}]}

kill @s
kill @e[type=marker,tag=obl.altar.summoner,distance=..10]
kill @e[type=marker,tag=obl.altar.lvl3_particles,limit=1,sort=nearest,distance=..10]