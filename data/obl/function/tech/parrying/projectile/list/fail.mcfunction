###   S T A R T
data merge entity @s {NoGravity:0b}
tag @s remove obl.dont_move
tag @s remove obl.projectile.reflected
tag @s remove obl.projectile.parried

###   L A U N C H   P R O J E C T I L E
execute at @e[type=#obl:all_mobs,tag=obl.temp.original_target,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["obl.temp.motion_modify"]}
## SPEED
execute if entity @s[tag=obl.parry_strength.1] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.2] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^2 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[tag=obl.parry_strength.3] anchored eyes facing entity @e[type=marker,tag=obl.temp.motion_modify,limit=1] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^3 summon marker run function obl:tech/parrying/projectile/launch
execute if entity @s[type=armor_stand,tag=obl.marauder.grenade] run function obl:abilities/mobs/ghost_ship/marauder.grenade.explode.fail
execute if entity @s[type=zombie,tag=obl.crystodian] run function obl:abilities/mobs/crystodian/fail
execute if entity @s[type=tnt] run data merge entity @s {Fuse:1s}
execute if entity @s[type=item] run data merge entity @s {PickupDelay:0s}
execute if entity @s[type=ender_pearl] run kill @s
data modify entity @s[tag=!obl.power_instead_motion] Motion set from storage obl:temp vector
data modify entity @s[tag=obl.power_instead_motion] Power set from storage obl:temp vector

###   E N D
tag @s remove obl.parry_strength.1
tag @s remove obl.parry_strength.2
tag @s remove obl.parry_strength.3
tag @s remove obl.power_instead_motion
kill @e[type=marker,tag=obl.temp.motion_modify]