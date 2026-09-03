###   T E C H N I C A L
## Select random armor part to hover over
execute unless entity @e[type=vex,tag=obl.black_death.chosen] run function oblivion:abilities/bosses/black_death/armor_parts/random_part
## Hover over selected armor part
execute at @e[type=vex,tag=obl.black_death.chosen] run function oblivion:abilities/bosses/black_death/armor_parts/cursed_spirit_target

###   A B I L I T I E S
## First encounter
execute if score @s[tag=obl.first_appearance] abilities matches 5 run tag @a remove obl.target
execute if score @s[tag=obl.first_appearance] abilities matches 90 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=obl.first_appearance] abilities matches 90 run tag @p add obl.target
execute if score @s[tag=obl.first_appearance] abilities matches 90 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s[tag=obl.first_appearance] abilities matches 100 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/bosses/black_death/phase_3/ability_1
execute if score @s[tag=obl.first_appearance] abilities matches 100 run tag @a remove obl.target
execute if score @s[tag=obl.first_appearance] abilities matches 290 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=obl.first_appearance] abilities matches 290 run tag @p add obl.target
execute if score @s[tag=obl.first_appearance] abilities matches 290 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s[tag=obl.first_appearance] abilities matches 300 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/bosses/black_death/phase_3/ability_1
execute if score @s[tag=obl.first_appearance] abilities matches 300 run tag @a remove obl.target
## Second+ encounter
execute if score @s[tag=!obl.first_appearance] abilities matches 40 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 40 run tag @p add obl.target
execute if score @s[tag=!obl.first_appearance] abilities matches 40 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s[tag=!obl.first_appearance] abilities matches 50 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/bosses/black_death/phase_3/ability_1
execute if score @s[tag=!obl.first_appearance] abilities matches 50 run tag @a remove obl.target
execute if score @s[tag=!obl.first_appearance] abilities matches 100 run function oblivion:abilities/bosses/black_death/random_spawn_spirit
execute if score @s[tag=!obl.first_appearance] abilities matches 140 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 140 run tag @p add obl.target
execute if score @s[tag=!obl.first_appearance] abilities matches 140 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s[tag=!obl.first_appearance] abilities matches 150 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/bosses/black_death/phase_3/ability_1
execute if score @s[tag=!obl.first_appearance] abilities matches 150 run tag @a remove obl.target
execute if score @s[tag=!obl.first_appearance] abilities matches 200..210 unless score obl.cursed_part.count oblivion matches ..3 run function oblivion:abilities/bosses/black_death/phase_3/change_armor_part
execute if score @s[tag=!obl.first_appearance] abilities matches 240 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 240 run tag @p add obl.target
execute if score @s[tag=!obl.first_appearance] abilities matches 240 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s[tag=!obl.first_appearance] abilities matches 250 anchored eyes facing entity @p[tag=obl.target] eyes run function oblivion:abilities/bosses/black_death/phase_3/ability_1
execute if score @s[tag=!obl.first_appearance] abilities matches 250 run tag @a remove obl.target


###   E N D
execute if score @s abilities matches 300.. run scoreboard players set @s abilities 0