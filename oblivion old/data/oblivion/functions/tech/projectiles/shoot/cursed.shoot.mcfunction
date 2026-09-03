###   S H O O T
execute anchored eyes run summon minecraft:marker ^ ^ ^.01 {Tags:["obl.projectile","obl.projectile.curses","obl.projectile.speed.1"]}
data modify entity @e[type=marker,tag=obl.projectile,tag=!obl.modified,limit=1] Rotation set from entity @s Rotation

###   I N S E R T   S H O O T E R ' S   I D
scoreboard players operation @e[type=marker,tag=obl.projectile,tag=!obl.modified] obl.id = @s obl.id

###   E N D
execute if entity @s[tag=obl.player_owner] run tag @e[type=marker,tag=obl.projectile,tag=!obl.modified] add obl.player_owner
tag @e[type=marker,tag=obl.projectile,tag=!obl.modified] add obl.modified

################################################################################################################################

###   S O U N D
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=!obl.player_owner] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.1
execute if entity @s[tag=obl.player_owner] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.2
execute if entity @s[tag=obl.player_owner] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1.2
execute if entity @s[tag=obl.player_owner] as @p[predicate=oblivion:matching_score] at @s run tp @s ~ ~ ~ ~ ~-5

###   C L E A N U P
kill @s