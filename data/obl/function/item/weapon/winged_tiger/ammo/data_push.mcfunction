execute store result storage obl:winged_tiger ammo.normal int 1 run scoreboard players get @s obl.weapon.winged_tiger.ammo.normal
execute store result storage obl:winged_tiger ammo.savage int 1 run scoreboard players get @s obl.weapon.winged_tiger.ammo.savage
execute store result storage obl:winged_tiger ammo.spent int 1 run scoreboard players get @s obl.weapon.winged_tiger.ammo_spent

item modify entity @s weapon.mainhand obl:weapon/winged_tiger/set_ammo
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.savage=..48}] weapon.mainhand obl:weapon/winged_tiger/lore.ammo_spent
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.savage=0..}] weapon.mainhand obl:weapon/winged_tiger/lore.savage
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.savage=0..}] weapon.mainhand obl:weapon/winged_tiger/lore.damage.savage
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.savage=0..}] weapon.mainhand obl:weapon/winged_tiger/set_damage.savage
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.normal=0..}] weapon.mainhand obl:weapon/winged_tiger/lore.normal
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.normal=0..}] weapon.mainhand obl:weapon/winged_tiger/lore.damage.normal
item modify entity @s[scores={obl.weapon.winged_tiger.ammo.normal=0..}] weapon.mainhand obl:weapon/winged_tiger/set_damage.normal

execute unless entity @s[scores={obl.weapon.winged_tiger.ammo.normal=1..}] unless entity @s[scores={obl.weapon.winged_tiger.ammo.savage=1..}] run item modify entity @s weapon.mainhand obl:weapon/winged_tiger/set_damage.dry
execute unless entity @s[scores={obl.weapon.winged_tiger.ammo.normal=1..}] unless entity @s[scores={obl.weapon.winged_tiger.ammo.savage=1..}] run item modify entity @s weapon.mainhand obl:weapon/winged_tiger/lore.damage.dry

execute if score @s obl.weapon.winged_tiger.ammo.normal matches 0.. run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 1
execute if score @s obl.weapon.winged_tiger.ammo.savage matches 1.. run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 2
execute if entity @s[tag=obl.weapon.winged_tiger.can_shin,scores={obl.weapon.winged_tiger.ammo_spent=48..}] run scoreboard players set @s obl.weapon.winged_tiger.hud_mode 3