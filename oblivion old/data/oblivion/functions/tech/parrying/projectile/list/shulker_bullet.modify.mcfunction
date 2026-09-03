scoreboard players operation @s obl.id = @e[type=shulker_bullet,limit=1,sort=nearest,tag=obl.temp.reflecting_shulker_bullet] obl.id
scoreboard players operation #id.temp obl.id = @s obl.id

data merge entity @s {Steps:1}
data modify entity @s Target set from entity @e[type=shulker_bullet,tag=obl.temp.reflecting_shulker_bullet,predicate=oblivion:matching_score,limit=1] Owner
data modify entity @s Owner set from entity @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] UUID
tag @s add obl.projectile.reflected
kill @e[type=shulker_bullet,tag=obl.temp.reflecting_shulker_bullet,predicate=oblivion:matching_score]
data modify entity @s Motion set from storage oblivion:temp vector