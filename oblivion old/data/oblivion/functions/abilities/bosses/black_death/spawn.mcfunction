###   S P A W N
summon minecraft:magma_cube ~ ~-.85 ~ {Size:3,NoAI:1b,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Чёрная Смерть","color":"dark_gray"}]',Health:1024,Silent:1b,Tags:["obl.boss","obl.mob","obl.boss.black_death","obl.black_death.speed.1","obl.phase.1","obl.dontreplace","obl.difficultychanged"],Attributes:[{Name:"generic.armor",Base:12f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.attack_damage",Base:10f},{Name:"generic.max_health",Base:1024f}]}
kill @s[type=marker]
particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 500
playsound oblivion:misc.laugh.2 hostile @a ~ ~ ~ 1 0.75
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.6 0.5

###   S C O R E B O A R D S
scoreboard players set obl.disable_fake_bossbar oblivion 0
scoreboard players set black_death_alive oblivion 1
scoreboard players set obl.isbossactive oblivion 1
scoreboard players set @e[tag=obl.boss.black_death,limit=1] obl.fake_health 800
scoreboard players set obl.max_damage oblivion 75

###   S O U N D S
playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.elder_guardian.curse.ambient hostile @s ~ ~ ~ 1 0.1

###   F U N C T I O N S
tellraw @a [{"text":"Игрок ","color":"#272727"},{"selector":"@p","color":"gray"},{"text":" начал танец со смертью!","color":"#272727"}]
tag @a[distance=..50,scores={obl.difficulty=2..}] add obl.in_battle.boss
tag @a[distance=..50,scores={obl.difficulty=2..}] add obl.in_battle.black_death
tag @a[distance=..50,scores={obl.difficulty=2..}] remove obl.can_skip_transition
title @a[distance=..50,scores={obl.difficulty=2..}] subtitle ""
execute as @a[distance=..50,scores={obl.difficulty=2..}] if predicate oblivion:items/hold.totem_of_dying.both run tag @s add obl.in_battle.no_hit
execute as @a[tag=obl.in_battle.black_death] at @s unless entity @s[tag=obl.beaten.black_death] run tag @e[type=magma_cube,tag=obl.boss.black_death,limit=1,sort=nearest] add obl.first_appearance
advancement grant @a[tag=obl.in_battle.black_death] only oblivion:advancements/mobs/summon.black_death
execute as @a[tag=obl.in_battle.black_death] run function oblivion:abilities/bosses/battle_start

###   B O S S B A R
bossbar add oblivion:boss_health "Чёрная Смерть"
bossbar set oblivion:boss_health name [{"text":"< 💀 >  Чёрная Смерть  < 💀 >","color":"#272727"}]
bossbar set oblivion:boss_health max 800
bossbar set oblivion:boss_health value 800
bossbar set oblivion:boss_health visible true
bossbar set oblivion:boss_health color white
bossbar set oblivion:boss_health style notched_20
bossbar set oblivion:boss_health players @a[tag=obl.in_battle.black_death]