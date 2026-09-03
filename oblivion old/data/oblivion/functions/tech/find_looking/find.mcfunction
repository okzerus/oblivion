tag @s add obl.temp.looking
scoreboard players set $max obl.find_look.temp 0
tag @e[type=#oblivion:looking_candidates] remove obl.find_looking.result
tag @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate] add obl.find_looking.result

execute as @e[type=#oblivion:looking_candidates,tag=obl.find_looking.result] store result score @s obl.find_look.temp run scoreboard players add $max obl.find_look.temp 1

scoreboard players set $filter obl.find_look.temp 0

tag @e[type=#oblivion:looking_candidates] remove obl.find_looking.in_filter
function oblivion:tech/find_looking/internal/filter/iteration

execute anchored eyes positioned ^ ^ ^.1 run function oblivion:tech/raycast/looking_at.block
execute if entity @e[type=#oblivion:looking_candidates,tag=obl.find_looking.result,distance=..5.3,limit=1] run function oblivion:tech/find_looking/if.found_entity
execute as @e[type=#oblivion:looking_candidates,tag=obl.find_looking.result,distance=..5.3,limit=1] at @s run function oblivion:tech/find_looking/on.found_entity

tag @s remove obl.temp.looking