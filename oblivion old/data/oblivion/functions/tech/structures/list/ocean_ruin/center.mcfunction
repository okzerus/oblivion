scoreboard players operation #id.temp obl.id = @s obl.id
execute as @e[type=guardian,tag=obl.ruin_guardian,predicate=oblivion:matching_score,limit=1,distance=30..] at @s run function oblivion:abilities/mobs/ruin_guardian/teleport
execute unless entity @e[type=guardian,tag=obl.ruin_guardian,predicate=oblivion:matching_score] run kill @s