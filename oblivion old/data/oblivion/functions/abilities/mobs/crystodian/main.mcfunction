execute if entity @s[tag=obl.crystodian.mid_air] if entity @s[nbt={OnGround:1b}] run tag @s remove obl.crystodian.mid_air
execute if score @s obl.crystodian.dashing matches 1.. run scoreboard players remove @s obl.crystodian.dashing 1

execute unless score @s obl.mob.ability_cd matches 1.. unless score @s obl.crystodian.dashing matches 1.. if entity @a[distance=..7] run scoreboard players set @s obl.crystodian.dashing 11
execute if score @s obl.crystodian.dashing matches 11 run function oblivion:abilities/reflectable_attack_announce
execute if score @s obl.crystodian.dashing matches 1 run function oblivion:abilities/mobs/crystodian/dash

execute if entity @s[tag=obl.crystodian.mid_air] run particle dust 1 0 1 1 ~ ~ ~ 0.15 0.15 0.15 1 5