###   S H O O T
execute anchored eyes run summon minecraft:marker ^ ^ ^.01 {Tags:["obl.projectile","obl.projectile.yamato_sword","obl.projectile.speed.3"]}
data modify entity @e[type=marker,tag=obl.projectile,tag=!obl.modified,limit=1] Rotation set from entity @s Rotation

###   I N S E R T   S H O O T E R ' S   I D
scoreboard players operation @e[type=marker,tag=obl.projectile,tag=!obl.modified] obl.id = @s obl.id

###   E N D
execute if entity @s[tag=obl.player_owner] run tag @e[type=marker,tag=obl.projectile,tag=!obl.modified] add obl.player_owner
tag @e[type=marker,tag=obl.projectile,tag=!obl.modified] add obl.modified

################################################################################################################################

###   S O U N D
scoreboard players operation #id.temp obl.id = @s obl.id
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 0.6 2
playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 0.6 2

###   C L E A N U P
kill @s