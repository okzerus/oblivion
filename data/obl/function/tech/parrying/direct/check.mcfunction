execute on attacker run tag @s add obl.temp.to_parry
execute unless entity @e[type=#obl:all_mobs,tag=obl.temp.to_parry] run tag @e[type=#obl:all_mobs,tag=obl.parrying.target,limit=1,sort=nearest] add obl.temp.to_parry
scoreboard players operation #id.temp.target obl.id.target = @s obl.id
tag @e[type=#obl:all_mobs,tag=obl.temp.to_parry] add obl.temp.found
tag @e[type=#obl:all_mobs,predicate=obl:matching_score.target] add obl.temp.found
execute if entity @e[type=#obl:all_mobs,tag=obl.temp.found] run function obl:tech/parrying/direct/parry