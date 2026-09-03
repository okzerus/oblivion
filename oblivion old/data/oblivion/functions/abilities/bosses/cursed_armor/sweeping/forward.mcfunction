tag @s add obl.temp.break_armor
execute unless entity @s[type=player] run tp @s ~ ~ ~ facing entity @p eyes

particle minecraft:sweep_attack ^ ^ ^.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^1 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^1.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^2.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^3 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^3.5 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^4 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^4.5 0 0 0 0 1 force
particle minecraft:dust 0 1 0 1 ^ ^ ^.5 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^1 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^1.5 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^2.5 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^3 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^3.5 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^4 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^4.5 0.2 0.2 0.2 0 7 force
particle minecraft:electric_spark ^ ^ ^.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^1 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^1.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^2.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^3 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^3.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^4 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^4.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^1 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^1.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^2.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^3 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^3.5 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^4 0.4 0.4 0.4 0.1 12 force
particle minecraft:crit ^ ^ ^4.5 0.4 0.4 0.4 0.1 12 force

playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8

execute positioned ^ ^ ^1.5 as @p[distance=..3] run tag @s[tag=obl.can_parry] add obl.temp.strong_parry
execute positioned ^ ^ ^1.5 as @p[distance=..3] run damage @s 14 minecraft:mob_attack by @e[type=minecraft:wither_skeleton,tag=obl.boss.cursed_armor,limit=1,sort=nearest]
execute positioned ^ ^ ^1.5 as @p[distance=..3,tag=!obl.can_parry] run function oblivion:tech/armorbreaking/add