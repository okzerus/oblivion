scoreboard players add @s abilities 1

execute if score @s abilities matches 8 run tag @e[type=marker,tag=obl.pixie_swing,limit=1,sort=nearest] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 12 run tag @s add obl.pixieclone.teleport
execute if score @s abilities matches 12 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 12 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @e[type=vex,tag=obl.pixieclone.teleport] ^ ^ ^24
execute if score @s abilities matches 12 run data merge entity @s {NoAI:0b}
execute if score @s abilities matches 12 run kill @e[type=marker,tag=obl.pixie_swing,limit=1,sort=nearest]
execute if score @s abilities matches 12 run tag @s remove obl.pixieclone.teleport
execute if score @s abilities matches 12 run tag @s remove obl.pixieclone.attacking
execute if score @s abilities matches 12 run scoreboard players set @s abilities 0