playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.vex.charge master @a ~ ~ ~ 0.5 0.1
execute unless entity @s[tag=obl.beam_reflected] as @a[distance=..4] run damage @s 10 minecraft:mob_projectile by @e[tag=obl.boss.black_death,limit=1]
execute if entity @s[tag=obl.beam_reflected] as @a[distance=..4] run damage @s 7 minecraft:mob_projectile by @p[tag=obl.reflected_with_shield]
effect give @a[distance=..4] slowness 5 1
effect give @a[distance=..4] weakness 5 1
effect give @a[distance=..4] mining_fatigue 5 4
effect give @a[distance=..4] poison 3 4
particle dust 0 1 0 1 ~ ~1 ~ 2 2 2 0.01 100
particle minecraft:firework ~ ~ ~ 0 0 0 0.2 40

kill @s