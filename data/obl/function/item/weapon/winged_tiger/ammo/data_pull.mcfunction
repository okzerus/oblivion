execute store result score @s obl.weapon.winged_tiger.ammo.normal run data get entity @s SelectedItem.components."minecraft:custom_data"."obl.ammo".normal
execute store result score @s obl.weapon.winged_tiger.ammo.savage run data get entity @s SelectedItem.components."minecraft:custom_data"."obl.ammo".savage
execute store result score @s obl.weapon.winged_tiger.ammo_spent run data get entity @s SelectedItem.components."minecraft:custom_data"."obl.ammo".spent

execute if score @s obl.weapon.winged_tiger.ammo.normal matches 1.. run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 1
execute if score @s obl.weapon.winged_tiger.ammo.savage matches 1.. run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 2
execute if entity @s[tag=obl.weapon.winged_tiger.can_shin,scores={obl.weapon.winged_tiger.ammo_spent=48..}] run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 3