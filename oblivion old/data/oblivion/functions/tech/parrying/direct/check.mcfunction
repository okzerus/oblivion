execute on attacker run tag @s add obl.temp.to_parry
execute unless entity @e[type=#oblivion:all_mobs,tag=obl.temp.to_parry] run tag @e[type=#oblivion:all_mobs,tag=obl.parrying.target,limit=1,sort=nearest] add obl.temp.to_parry
scoreboard players operation #id.temp.target obl.id.target = @s obl.id
tag @e[type=#oblivion:all_mobs,tag=obl.temp.to_parry] add obl.temp.found
tag @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score.target] add obl.temp.found
execute if entity @e[type=#oblivion:all_mobs,tag=obl.temp.found] run function oblivion:tech/parrying/direct/parry