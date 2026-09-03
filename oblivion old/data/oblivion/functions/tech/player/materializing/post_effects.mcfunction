scoreboard players remove @s obl.materializing 1

execute if score @s obl.materializing matches 540 run function oblivion:tech/player/materializing/strike
execute if score @s obl.materializing matches 433 run function oblivion:tech/player/materializing/strike
execute if score @s obl.materializing matches 425 run function oblivion:tech/player/materializing/strike
execute if score @s obl.materializing matches 250 run function oblivion:tech/player/materializing/strike
execute if score @s obl.materializing matches 87 run function oblivion:tech/player/materializing/strike
execute if score @s obl.materializing matches 3 run function oblivion:tech/player/materializing/strike

execute if score @s obl.materializing matches ..0 run tag @s remove obl.player.materializing.post_effects