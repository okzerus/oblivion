execute rotated ~0 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/o
execute rotated ~45 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/b
execute rotated ~90 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/l
execute rotated ~135 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/i
execute rotated ~180 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/v
execute rotated ~225 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/i
execute rotated ~270 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/o
execute rotated ~315 0 positioned ^ ^.45 ^1.2 run function oblivion:tech/unusual/effects/leggings/oblivion/n

execute as @p[predicate=oblivion:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated 0 0 positioned ^-.05 ^.25 ^.04 run function oblivion:tech/unusual/effects/leggings/oblivion/circle
execute as @p[predicate=oblivion:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated 0 0 positioned ^-.05 ^.75 ^.04 run function oblivion:tech/unusual/effects/leggings/oblivion/circle

execute as @p[predicate=oblivion:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated as @e[type=marker,tag=obl.circling_unusual,limit=1,sort=nearest] positioned ^-.04 ^.1 ^.03 run function oblivion:tech/unusual/effects/leggings/oblivion/pentagram