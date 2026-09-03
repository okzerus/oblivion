particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 0.6 70
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1.5 0.5

execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run tp @s ~ ~1.5 ~
execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] as @a[distance=..3] run damage @s 50 minecraft:mob_attack by @e[type=minecraft:magma_cube,tag=obl.boss.black_death,limit=1,sort=nearest]
execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 1 0.9
execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ 1 0.9
execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9
execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.7
kill @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1]