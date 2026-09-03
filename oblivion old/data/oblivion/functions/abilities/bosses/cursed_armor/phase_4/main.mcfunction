###   T E C H N I C A L
## Always look at a closest player
execute unless entity @s[tag=obl.true_invisibility] unless score @s obl.fake_health matches ..0 anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes
effect clear @s poison
effect clear @s wither

###   A B I L I T I E S
## First encounter
execute if score @s[tag=obl.first_appearance] abilities matches 50 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=obl.first_appearance] abilities matches 100 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=obl.first_appearance] abilities matches 150 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=obl.first_appearance] abilities matches 200 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
## Second+ encounter
execute if score @s[tag=!obl.first_appearance] abilities matches 30 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=!obl.first_appearance] abilities matches 70 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed
execute if score @s[tag=!obl.first_appearance] abilities matches 120 run function oblivion:abilities/bosses/cursed_armor/phase_4/prepare_ability_2
execute if score @s[tag=!obl.first_appearance] abilities matches 170 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
execute if score @s[tag=!obl.first_appearance] abilities matches 175 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
execute if score @s[tag=!obl.first_appearance] abilities matches 190 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:tech/projectiles/shoot/cursed


###   E N D
execute if score @s abilities matches 200.. run scoreboard players set @s abilities 0