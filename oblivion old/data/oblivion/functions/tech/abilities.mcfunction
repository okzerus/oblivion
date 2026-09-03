# Devil

execute as @e[tag=devil,tag=!amethysted] at @s run function oblivion:tech/abilities/devil
execute as @e[tag=demon,tag=!amethysted] at @s run function oblivion:tech/abilities/demon

# Hunger

execute as @e[tag=hunger,tag=!amethysted] at @s run function oblivion:tech/abilities/hunger
execute if score hungeralive oblivion matches 1 unless entity @e[tag=hunger] if entity @a[tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/death
execute if score hungeralive oblivion matches 1 unless entity @e[tag=hunger] unless entity @a[tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/everyoneleft

# Necromancer

execute as @e[tag=necromancer,tag=!amethysted] at @s run function oblivion:tech/abilities/necromancer

# Amethyst pixie

execute as @e[tag=amethystpixie,tag=!amethysted] at @s run function oblivion:tech/abilities/amethystpixie
execute if score amethystpixiealive oblivion matches 1 unless entity @e[tag=amethystpixie] if entity @a[tag=inbattlewithpixie,limit=1] run function oblivion:tech/abilities/amethystpixieabilities/deathdefault
execute if score amethystpixiealive oblivion matches 1 unless entity @e[tag=amethystpixie] unless entity @a[tag=inbattlewithpixie,limit=1] run function oblivion:tech/abilities/amethystpixieabilities/everyoneleft


# Cursed armor

# execute as @e[tag=cursedarmor,tag=!amethysted] at @s run function oblivion:tech/abilities/cursedarmor
# execute if score cursedarmoralive oblivion matches 1 unless entity @e[tag=cursedarmor] unless entity @e[tag=obl.armorthis] unless entity @a[tag=inbattlewitharmor,limit=1] run function oblivion:tech/abilities/armorabilities/everyoneleft


# Blood Mage

execute as @e[tag=bloodmage,tag=!amethysted] at @s run function oblivion:tech/abilities/bloodmage

# Storm

execute as @e[tag=storm,tag=!amethysted] at @s run function oblivion:tech/abilities/storm

# Gargantua

execute as @e[tag=gargantua,tag=!amethysted] at @s run function oblivion:tech/abilities/gargantua

# Rage Zombie

execute as @e[tag=ragezombie,tag=!amethysted] at @s run function oblivion:tech/abilities/ragezombie

# Anomaly

execute as @e[tag=snowmob,tag=!amethysted] at @s run function oblivion:tech/abilities/anomaly/snowmobability
execute as @e[tag=desertmob,tag=!amethysted] at @s run function oblivion:tech/abilities/anomaly/desertmobability

# Mother

execute as @e[tag=mother,tag=!amethysted] at @s run function oblivion:tech/abilities/mother
execute as @e[type=item,tag=motheregg,tag=!amethysted] at @s run function oblivion:tech/abilities/mother/mothereggfunction
execute as @e[type=item,tag=mothronegg,tag=!amethysted] at @s run function oblivion:tech/abilities/mothronabilities/mothroneggfunction
execute as @e[type=item,tag=nethermothronegg,tag=!amethysted] at @s run function oblivion:tech/abilities/nethermothronabilities/nethermothroneggfunction
execute as @e[type=cave_spider,tag=mothercavespider,tag=!amethysted] at @s run function oblivion:tech/abilities/mother/cavespiderfunction

# Weapons (cubes 3.0)

execute as @e[tag=amethysted] at @s run function oblivion:items/accs/effects/amethysted/loop
execute as @e[tag=voided] at @s run function oblivion:items/accs/effects/voided/loop