scoreboard players add @s obl.weapon.winged_tiger.reloading 1
execute if score @s obl.weapon.winged_tiger.reloading matches 1 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 0.7 1.3
execute if score @s obl.weapon.winged_tiger.reloading matches 1 run playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.7 1.2
execute unless score @s obl.weapon.winged_tiger.reloading matches 20.. run return 0


playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.7 1.3
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.05 10
scoreboard players set @s obl.weapon.winged_tiger.reloading 10
scoreboard players add @s obl.weapon.winged_tiger.ammo.normal 1

# Обновляем описание оружия
function obl:item/weapon/winged_tiger/ammo/data_push