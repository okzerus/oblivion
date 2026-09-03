playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 0.5 0.1

execute as @a[distance=..2] run damage @s 8 minecraft:magic by @e[type=#oblivion:agro,tag=obl.boss.cursed_armor,limit=1]
effect give @a[distance=..2] slowness 5 1
effect give @a[distance=..2] weakness 5 1
effect give @a[distance=..2] mining_fatigue 5 4
effect give @a[distance=..2] poison 3 4
effect give @a[distance=..2] blindness 1 0 true

particle dust 0 1 0 1 ~ ~1 ~ 1 1 1 0.01 50

kill @s