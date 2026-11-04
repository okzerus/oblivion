scoreboard players add @s obl.weapon.winged_tiger.reloading 1
execute if score @s obl.weapon.winged_tiger.reloading matches 1 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 0.7 1.3
execute if score @s obl.weapon.winged_tiger.reloading matches 1 run playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 0.7 1.2
execute if score @s obl.weapon.winged_tiger.reloading matches 10 run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.7 1.7
execute unless score @s obl.weapon.winged_tiger.reloading matches 20.. run return 0

scoreboard players set @s obl.weapon.winged_tiger.ammo.normal 12
scoreboard players set @s obl.weapon.winged_tiger.ammo.savage -1
scoreboard players set @s obl.weapon.winged_tiger.reloading 0
playsound minecraft:item.crossbow.loading_end player @a ~ ~ ~ 1 1.2
particle minecraft:flame ~ ~0.5 ~ 0.3 0.6 0.3 0.06 20
# Обновляем описание оружия
function obl:item/weapon/winged_tiger/ammo/data_push