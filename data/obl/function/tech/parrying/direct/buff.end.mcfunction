tag @s remove obl.empowered.parry
tag @s remove obl.empowered.parry.direct

scoreboard players remove @s obl.stackable.strength 100
scoreboard players remove @s obl.stackable.haste 100

scoreboard players remove @s obl.parry.direct_count 1
execute if score @s obl.parry.direct_count matches 1.. run function obl:tech/parrying/direct/buff.end