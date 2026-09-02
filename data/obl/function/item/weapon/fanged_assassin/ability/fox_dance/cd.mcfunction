scoreboard players remove @s obl.weapon.fanged_assassin.fox_dance.cd 1
execute if score @s obl.weapon.fanged_assassin.accelerando matches 600.. run scoreboard players remove @s obl.weapon.fanged_assassin.autumn_red.cd 1

execute if score @s obl.weapon.fanged_assassin.fox_dance.cd matches 0 run function obl:item/weapon/fanged_assassin/ability/fox_dance/ready
