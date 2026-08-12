particle flame


summon marker ~ ~ ~ {Tags:["check"]}
execute as @e[type=pig,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^.01 at @e[type=marker,tag=check,limit=1,distance=..2.1] run tag @s add hit


kill @e[type=marker,tag=check]
execute if entity @s[distance=..20] unless entity @e[tag=hit] unless block ~ ~ ~ grass_block positioned ^ ^ ^.5 run function obl:raycast
execute as @e[tag=hit] run damage @s 20000

advancement revoke @s only obl:triggers/scorchfield_blade

