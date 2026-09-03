playsound oblivion:misc.laugh.2 hostile @s[tag=!obl.temp.death_spear.hit] ~ ~ ~ 1 0.85
playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.1

execute as @a[distance=..2,tag=!obl.temp.death_spear.hit] at @s run damage @s 6 oblivion:death_spear by @e[type=magma_cube,tag=obl.boss.black_death,limit=1]
execute as @a[distance=..2,tag=!obl.temp.death_spear.hit] run effect give @s slowness 3 2 false
execute as @a[distance=..2,tag=!obl.temp.death_spear.hit] run effect give @s darkness 5 0 true
execute as @a[distance=..2,tag=!obl.temp.death_spear.hit] run effect give @s blindness 1 0 true
tag @a[distance=..2] add obl.temp.death_spear.hit

particle dust 0 0 0 1 ~ ~1 ~ 1 1 1 0.01 50

kill @s