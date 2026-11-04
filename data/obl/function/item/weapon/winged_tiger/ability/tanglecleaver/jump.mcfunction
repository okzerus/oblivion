tag @s add obl.weapon.winged_tiger.performing_tanglecleaver
function obl:item/weapon/winged_tiger/ability/tanglecleaver/window_deactivate
attribute @s minecraft:safe_fall_distance modifier add obl.weapon.winged_tiger.performing_tanglecleaver 25 add_value

scoreboard players set @s obl.weapon.winged_tiger.tanglecleaver.cd 600
scoreboard players add @s[scores={obl.weapon.winged_tiger.ammo.normal=3..}] obl.weapon.winged_tiger.ammo_spent 3
scoreboard players remove @s[scores={obl.weapon.winged_tiger.ammo.normal=3..}] obl.weapon.winged_tiger.ammo.normal 3
scoreboard players remove @s[scores={obl.weapon.winged_tiger.ammo.savage=1..}] obl.weapon.winged_tiger.ammo.savage 1
function obl:item/weapon/winged_tiger/ammo/data_push

particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.8