# Executes a single filter iteration and calls the next one
execute if score $filter obl.find_look.temp matches 1.. as @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate,tag=obl.find_looking.result] run function oblivion:tech/find_looking/internal/filter/check_filter
execute if score $filter obl.find_look.temp matches 0 run tag @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate,tag=obl.find_looking.result] add obl.find_looking.in_filter

execute store success score $success obl.find_look.temp if predicate oblivion:can_see_filter

execute if score $success obl.find_look.temp matches 0 run tag @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate,tag=obl.find_looking.in_filter] remove obl.find_looking.result
execute if score $success obl.find_look.temp matches 1 run tag @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate,tag=!obl.find_looking.in_filter] remove obl.find_looking.result

scoreboard players operation $filter obl.find_look.temp *= 2 obl.find_look.const
execute if score $filter obl.find_look.temp matches 0 run scoreboard players set $filter obl.find_look.temp 1

execute if entity @e[type=#oblivion:looking_candidates,tag=obl.find_looking.candidate,tag=obl.find_looking.result,limit=1] if score $filter obl.find_look.temp <= $max obl.find_look.temp run function oblivion:tech/find_looking/internal/filter/iteration
