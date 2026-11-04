tag @s remove obl.sneaking
scoreboard players reset @s obl.sneaking

execute if entity @s[tag=obl.ego.withdrawing] run function obl:tech/player/ego/withdrawing/stop