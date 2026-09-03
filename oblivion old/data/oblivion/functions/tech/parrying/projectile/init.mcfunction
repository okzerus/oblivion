tag @s add obl.projectile.init

###   S T O R E   I D
execute on origin run tag @s add obl.temp.projectile_owner
scoreboard players operation @s obl.id = @e[type=#oblivion:all_mobs,tag=obl.temp.projectile_owner,limit=1] obl.id
execute unless entity @e[type=#oblivion:all_mobs,tag=obl.temp.projectile_owner] run tag @s add obl.projectile.no_owner
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.projectile_owner,type=player] run tag @s add obl.projectile.player_owner
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.projectile_owner,type=blaze] run tag @s add obl.projectile.blaze_owner
tag @e[type=#oblivion:all_mobs,tag=obl.temp.projectile_owner] remove obl.temp.projectile_owner

###   C U S T O M   T A G
execute if data entity @s {Color:15695597} run tag @s add obl.arrow.arrow_of_support
execute if entity @s[tag=obl.arrow.arrow_of_support] run data merge entity @s {damage:-100.0d}