scoreboard players set @s obl.weapon.winged_tiger.ammo.normal -1
scoreboard players set @s obl.weapon.winged_tiger.ammo.savage -1
scoreboard players set @s obl.weapon.winged_tiger.ammo_spent 0

tag @s add obl.holding.winged_tiger
function obl:item/weapon/winged_tiger/ammo/data_pull

execute unless score @s obl.weapon.winged_tiger.active matches 1.. run function obl:item/weapon/winged_tiger/ammo/reset_spent
scoreboard players set @s obl.weapon.winged_tiger.active 600