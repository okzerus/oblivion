scoreboard players remove @s obl.weapon.fanged_assassin.autumn_red.cd 1
execute if score @s obl.weapon.fanged_assassin.accelerando matches 600.. run scoreboard players remove @s obl.weapon.fanged_assassin.autumn_red.cd 1

execute if score @s obl.weapon.fanged_assassin.autumn_red.cd matches 0 run function obl:item/weapon/fanged_assassin/ability/autumn_red/ready
