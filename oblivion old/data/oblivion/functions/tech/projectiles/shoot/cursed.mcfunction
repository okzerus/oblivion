###   S U M M O N   +   R O T A T I O N
execute anchored eyes run summon minecraft:marker ^ ^ ^.01 {Tags:["obl.projectile_shooter.cursed","obl.projectile_shooter"]}
data modify entity @e[type=marker,tag=obl.projectile_shooter,tag=!obl.modified,limit=1] Rotation set from entity @s Rotation

###   I N S E R T   S H O O T E R ' S   I D
scoreboard players operation @e[type=marker,tag=obl.projectile_shooter,tag=!obl.modified] obl.id = @s obl.id

###   E N D
execute if entity @s[type=player] run tag @e[type=marker,tag=obl.projectile_shooter,tag=!obl.modified] add obl.player_owner
tag @e[type=marker,tag=obl.projectile_shooter,tag=!obl.modified] add obl.modified

################################################################################################################################

###   A N N O U N C E   A T T A C K
execute if entity @s[type=!player,tag=!obl.custom_announce] run function oblivion:abilities/reflectable_attack_announce
execute if entity @s[type=!player,tag=!obl.custom_announce] anchored eyes positioned ^ ^ ^.1 run function oblivion:abilities/beam_attack_particles

###   S O U N D
playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 2
playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6