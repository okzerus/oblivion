execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 520 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 440 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 360 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 280 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 200 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 120 run function obl:tech/empower/autumn_red/autumn_red
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 1 run function obl:tech/empower/autumn_red/autumn_red

execute if score @s obl.weapon.fanged_assassin.autumn_red matches 1 run function obl:item/weapon/fanged_assassin/ability/autumn_red/end
particle dust_color_transition{from_color:[0.96,0.96,0.96],to_color:[0.86,0.55,0.04],scale:1} ~ ~0.75 ~ 0.5 0.75 0.5 0 2
particle dust{color:[0.14,0.14,0.14],scale:1} ~ ~0.75 ~ 0.5 0.75 0.5 0 3
scoreboard players remove @s obl.weapon.fanged_assassin.autumn_red 1