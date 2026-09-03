###   T E C H N I C A L
## Select random armor part to hover over
execute unless entity @e[type=wither_skeleton,tag=obl.cursed_armor.chosen] run function oblivion:abilities/bosses/cursed_armor/armor_parts/random_part
## Hover over selected armor part
execute at @e[type=wither_skeleton,tag=obl.cursed_armor.chosen] run function oblivion:abilities/bosses/cursed_armor/armor_parts/cursed_spirit_target

###   A B I L I T I E S
## First encounter
execute if score @s[tag=obl.first_appearance] abilities matches 50 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=obl.first_appearance] abilities matches 250 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
## Second+ encounter
execute if score @s[tag=!obl.first_appearance] abilities matches 50 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=!obl.first_appearance] abilities matches 100 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
execute if score @s[tag=!obl.first_appearance] abilities matches 150 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=!obl.first_appearance] abilities matches 200..210 unless score obl.cursed_part.count oblivion matches ..3 run function oblivion:abilities/bosses/cursed_armor/phase_3/change_armor_part
execute if score @s[tag=!obl.first_appearance] abilities matches 250 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed


###   E N D
execute if score @s abilities matches 300.. run scoreboard players set @s abilities 0