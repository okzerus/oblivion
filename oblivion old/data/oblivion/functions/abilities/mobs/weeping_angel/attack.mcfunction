###   S T A R T
tag @s add obl.temp.attacker
tag @p[tag=obl.temp.noticed] add obl.temp.victim
scoreboard players operation #id.temp obl.id = @s obl.id


###   F A C E   P L A Y E R
execute anchored eyes run summon marker ^ ^ ^.01 {Tags:["obl.temp.rotation_marker"]}
execute as @e[type=marker,tag=obl.temp.rotation_marker] at @s run tp @s ~ ~ ~ facing entity @p[tag=obl.temp.victim,distance=..15] eyes
execute store result score #temp.yaw oblivion run data get entity @e[type=marker,tag=obl.temp.rotation_marker,limit=1] Rotation[0]
execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp.yaw oblivion
execute store result score #temp.pitch oblivion run data get entity @e[type=marker,tag=obl.temp.rotation_marker,limit=1] Rotation[1]
execute as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp.pitch oblivion


###   O N   V I C T I M
effect give @p[tag=obl.temp.victim] blindness 4 0 true
effect give @p[tag=obl.temp.victim] slowness 1 4 true
damage @p[tag=obl.temp.victim] 10 minecraft:indirect_magic by @s
damage @p[tag=obl.temp.victim,distance=..1] 500 minecraft:indirect_magic by @s
playsound oblivion:misc.heartbeat player @p[tag=obl.temp.victim] ~ ~ ~ 0.7 1.3
playsound oblivion:misc.weeping_angel.here master @p[tag=obl.temp.victim] ~ ~ ~ 1.5 1 1
execute as @p[tag=obl.temp.victim] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=husk,sort=nearest,limit=1,tag=obl.temp.attacker] eyes


###   C L E A N U P
tag @a remove obl.temp.victim
tag @s remove obl.temp.attacker
tag @s add obl.weeping_angel.attacked
kill @e[type=marker,tag=obl.temp.rotation_marker]
scoreboard players set @s obl.weeping_angel.attack_cd 300
tag @e[type=armor_stand] remove obl.temp.weeping_angel_falling