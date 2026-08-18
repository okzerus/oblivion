execute rotated ~0 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/o
execute rotated ~45 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/b
execute rotated ~90 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/l
execute rotated ~135 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/i
execute rotated ~180 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/v
execute rotated ~225 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/i
execute rotated ~270 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/o
execute rotated ~315 0 positioned ^ ^.45 ^1.2 run function obl:tech/unusual/effects/leggings/obl/n

execute as @p[predicate=obl:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated 0 0 positioned ^-.05 ^.25 ^.04 run function obl:tech/unusual/effects/leggings/obl/circle
execute as @p[predicate=obl:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated 0 0 positioned ^-.05 ^.75 ^.04 run function obl:tech/unusual/effects/leggings/obl/circle

execute as @p[predicate=obl:matching_score] if entity @s[tag=!obl.sprinting,tag=!obl.walking,tag=!obl.mid_air] rotated as @e[type=marker,tag=obl.circling_unusual,limit=1,sort=nearest] positioned ^-.04 ^.1 ^.03 run function obl:tech/unusual/effects/leggings/obl/pentagram