scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=marker,tag=obl.inside_ego,predicate=obl:matching_score]

function obl:tech/player/ego/tp/get_args
function obl:tech/player/ego/tp/leave_macro_a with storage obl:ego args

attribute @s minecraft:gravity base reset
tag @s remove obl.ego