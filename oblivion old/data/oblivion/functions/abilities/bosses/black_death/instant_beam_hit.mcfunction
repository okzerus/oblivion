playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 0.5 0.1
playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1
execute as @a[distance=..4] run damage @s 10 minecraft:mob_projectile by @e[type=vex,tag=obl.boss.black_death,limit=1,sort=nearest]
effect give @a[distance=..4] blindness 2 4
effect give @a[distance=..4] wither 2 4
particle dust 0 0 0 1 ~ ~1 ~ 2 2 2 0.01 100