scoreboard players remove @s obl.stackable.strength 10
scoreboard players remove @s obl.stackable.resistance 5

scoreboard players remove @s obl.empowering.viking_set 1
execute if score @s obl.empowering.viking_set matches 0 run tag @s remove obl.empowered.viking_set
execute if score @s obl.empowering.viking_set matches 1.. run function oblivion:items/set_bonuses/viking/empower/cleanup