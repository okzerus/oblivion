scoreboard players remove @s obl.cd.villager_emp.butcher 1

effect give @s hunger 1 0 true
execute unless score @s obl.food matches 19.. run effect give @s saturation 1 0 true

execute if score @s obl.cd.villager_emp.butcher matches ..0 run function oblivion:qol/villagers/effects/butcher.end