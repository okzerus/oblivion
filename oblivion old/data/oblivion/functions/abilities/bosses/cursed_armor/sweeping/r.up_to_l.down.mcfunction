tag @s remove obl.temp.break_armor
execute unless entity @s[type=player] run tp @s ~ ~ ~ facing entity @p eyes

particle minecraft:sweep_attack ^-2 ^.4 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^-1.5 ^.3 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^-1 ^.2 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^-.5 ^.1 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^ ^ ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^.5 ^-.1 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^1 ^-.2 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^1.5 ^-.3 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^2 ^-.4 ^2 0 0 0 0 1 force
particle minecraft:dust 0 1 0 1 ^-2 ^.4 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^-1.5 ^.3 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^-1 ^.2 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^-.5 ^.1 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^ ^ ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^.5 ^-.1 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^1 ^-.2 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^1.5 ^-.3 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:dust 0 1 0 1 ^2 ^-.4 ^2 0.2 0.2 0.2 0 7 force
particle minecraft:electric_spark ^-2 ^.4 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^-1.5 ^.3 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^-1 ^.2 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^-.5 ^.1 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^ ^ ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^.5 ^-.1 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^1 ^-.2 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^1.5 ^-.3 ^2 0.4 0.4 0.4 0.1 12 force
particle minecraft:electric_spark ^2 ^-.4 ^2 0.4 0.4 0.4 0.1 12 force

playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:entity.player.attack.sweep hostile @a ^ ^ ^2 1.5 1
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8
playsound minecraft:item.trident.return hostile @a ^ ^ ^2 1.5 0.8

execute positioned ^ ^ ^1.5 as @p[distance=..3] run tag @s[tag=obl.can_parry] add obl.temp.strong_parry
execute positioned ^ ^ ^1.5 as @p[distance=..3] run damage @s 9 minecraft:mob_attack by @e[type=minecraft:wither_skeleton,tag=obl.boss.cursed_armor,limit=1,sort=nearest]