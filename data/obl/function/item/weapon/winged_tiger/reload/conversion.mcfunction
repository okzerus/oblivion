execute if score @s obl.holding_rmb matches 1 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.5
execute if score @s obl.holding_rmb matches 1 run particle minecraft:smoke ~ ~.5 ~ 0.3 0.6 0.3 0.02 20
execute if score @s obl.holding_rmb matches 10 run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.7 1.7
execute unless score @s obl.holding_rmb matches 20.. run return 0

playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1.7
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1.5
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
particle minecraft:flash{color:[1.0,0.55,0.2,1.0]} ~ ~1 ~ 0 0 0 0 1
particle minecraft:flame ~ ~1 ~ 0.6 0.8 0.6 0.12 60
execute if entity @s[tag=obl.weapon.winged_tiger.can_shin,scores={obl.weapon.winged_tiger.ammo_spent=48..}] run function obl:effect/shin/tiantui/inflict
scoreboard players set @s obl.weapon.winged_tiger.ammo.normal -1
scoreboard players set @s obl.weapon.winged_tiger.ammo.savage 6
# Обновляем описание оружия
function obl:item/weapon/winged_tiger/ammo/data_push