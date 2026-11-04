execute if score @s obl.weapon.winged_tiger.ammo.normal matches 3.. run tag @s add obl.temp.enough_ammo
execute if score @s obl.weapon.winged_tiger.ammo.savage matches 1.. run tag @s add obl.temp.enough_ammo

execute if entity @s[predicate=obl:is.sneaking,tag=obl.temp.enough_ammo] run tag @s add obl.temp.can_tanglecleaver
tag @s remove obl.temp.enough_ammo