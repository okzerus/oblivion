scoreboard players add @s obl.death_boss.cd 1

effect give @s weakness 2 9 true
effect give @s mining_fatigue 2 9 true
effect give @s invisibility 2 9 true

execute if score @s obl.death_boss.cd matches 1 run title @s times 0 100 0
title @s title {"text":""}
execute if score @s obl.death_boss.cd matches 1 run title @s subtitle {"text":"30","color":"red"}
execute if score @s obl.death_boss.cd matches 2 run title @s subtitle {"text":"29","color":"red"}
execute if score @s obl.death_boss.cd matches 3 run title @s subtitle {"text":"28","color":"red"}
execute if score @s obl.death_boss.cd matches 4 run title @s subtitle {"text":"27","color":"red"}
execute if score @s obl.death_boss.cd matches 5 run title @s subtitle {"text":"26","color":"red"}
execute if score @s obl.death_boss.cd matches 6 run title @s subtitle {"text":"25","color":"red"}
execute if score @s obl.death_boss.cd matches 7 run title @s subtitle {"text":"24","color":"red"}
execute if score @s obl.death_boss.cd matches 8 run title @s subtitle {"text":"23","color":"red"}
execute if score @s obl.death_boss.cd matches 9 run title @s subtitle {"text":"22","color":"red"}
execute if score @s obl.death_boss.cd matches 10 run title @s subtitle {"text":"21","color":"red"}
execute if score @s obl.death_boss.cd matches 11 run title @s subtitle {"text":"20","color":"red"}
execute if score @s obl.death_boss.cd matches 12 run title @s subtitle {"text":"19","color":"red"}
execute if score @s obl.death_boss.cd matches 13 run title @s subtitle {"text":"18","color":"red"}
execute if score @s obl.death_boss.cd matches 14 run title @s subtitle {"text":"17","color":"red"}
execute if score @s obl.death_boss.cd matches 15 run title @s subtitle {"text":"16","color":"red"}
execute if score @s obl.death_boss.cd matches 16 run title @s subtitle {"text":"15","color":"red"}
execute if score @s obl.death_boss.cd matches 17 run title @s subtitle {"text":"14","color":"red"}
execute if score @s obl.death_boss.cd matches 18 run title @s subtitle {"text":"13","color":"red"}
execute if score @s obl.death_boss.cd matches 19 run title @s subtitle {"text":"12","color":"red"}
execute if score @s obl.death_boss.cd matches 20 run title @s subtitle {"text":"11","color":"red"}
execute if score @s obl.death_boss.cd matches 21 run title @s subtitle {"text":"10","color":"red"}
execute if score @s obl.death_boss.cd matches 22 run title @s subtitle {"text":"9","color":"red"}
execute if score @s obl.death_boss.cd matches 23 run title @s subtitle {"text":"8","color":"red"}
execute if score @s obl.death_boss.cd matches 24 run title @s subtitle {"text":"7","color":"red"}
execute if score @s obl.death_boss.cd matches 25 run title @s subtitle {"text":"6","color":"red"}
execute if score @s obl.death_boss.cd matches 26 run title @s subtitle {"text":"5","color":"red"}
execute if score @s obl.death_boss.cd matches 27 run title @s subtitle {"text":"4","color":"red"}
execute if score @s obl.death_boss.cd matches 28 run title @s subtitle {"text":"3","color":"red"}
execute if score @s obl.death_boss.cd matches 29 run title @s subtitle {"text":"2","color":"red"}
execute if score @s obl.death_boss.cd matches 30 run title @s subtitle {"text":"1","color":"red"}
execute if score @s obl.death_boss.cd matches 31 run function oblivion:tech/player_death_cooldown_end