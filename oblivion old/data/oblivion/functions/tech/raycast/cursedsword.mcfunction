particle dust 0 1 0 1 ^ ^ ^ 0 0 0 0.01 10 force
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.05 1
execute as @e[distance=..2.5,type=#oblivion:aoe] at @s run tag @s add obl.curseaffected
execute if entity @s[distance=..25] if predicate oblivion:items/hold.cursedarmor.both run tag @s remove obl.curseaffected
execute if entity @s[distance=..25] as @a[advancements={oblivion:items/cursedswordbeam=true}] run advancement revoke @a only oblivion:items/cursedswordbeam
execute if entity @s[distance=..25] as @e[tag=obl.curseaffected] at @s run function oblivion:items/accs/weapons/cursedsworddebuffs
execute if entity @s[distance=..25] unless entity @e[distance=..2.5,type=#oblivion:aoe] positioned ^ ^ ^.3 run function oblivion:tech/raycast/cursedsword