function obl:tech/player/ego/tp/get_args
data modify storage obl:ego args.original.dim set from entity @s Dimension
data modify storage obl:ego args.original.x set from entity @s Pos[0]
data modify storage obl:ego args.original.y set from entity @s Pos[1]
data modify storage obl:ego args.original.z set from entity @s Pos[2]
function obl:tech/player/ego/tp/enter_macro with storage obl:ego args

attribute @s minecraft:gravity base set 0
tag @s add obl.ego

scoreboard players reset @s obl.ego.withdraw_progress
effect clear @s blindness
effect clear @s darkness
effect clear @s nausea
tag @s remove obl.ego.withdrawing