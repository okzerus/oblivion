scoreboard players set @s obl.weapon.winged_tiger.ammo_spent 0
scoreboard players set @s obl.weapon.winged_tiger.active -1
execute if predicate obl:holding/winged_tiger run function obl:item/weapon/winged_tiger/ammo/data_push