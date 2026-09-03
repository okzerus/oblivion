execute positioned ~ ~-1 ~ run function oblivion:tech/altars/disabled
scoreboard players set @s obl.altar.timeout 200
title @a[distance=..20] clear

effect give @a[distance=..20] slowness 4 0 true
effect give @a[distance=..20] darkness 4 0 true
effect give @a[distance=..20] weakness 4 0 true
effect give @a[distance=..20] mining_fatigue 4 0 true

execute as @a[tag=obl.player_enchanting.process] at @s unless entity @e[type=marker,tag=obl.altar,distance=...5] run function oblivion:tech/altars/rituals/player_enchantment/cleanup

execute at @e[type=marker,tag=obl.altar.summoner,distance=..10,limit=1,sort=random] run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Дух Забвения"}]',Health:30,PersistenceRequired:1b,Silent:1b,Tags:["obl.1tickparticle","obl.mob","obl.dontreplace","obl.oblivionspirit"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:8f},{Name:"generic.max_health",Base:30f}]}

summon armor_stand ~ ~1 ~ {Tags:["obl.altar.ritual_deny_notification"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,CustomName:'[{"text":"Ритуал был прерван","color":"#652e78"}]',CustomNameVisible:1b}