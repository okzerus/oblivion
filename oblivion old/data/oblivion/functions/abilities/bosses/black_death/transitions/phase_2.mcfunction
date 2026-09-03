scoreboard players add @s obl.phase_transition 1
particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 1.2 3
execute if score @s obl.phase_transition matches 5..165 run function oblivion:abilities/bosses/black_death/random_spear

execute if score @s obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s obl.phase_transition matches 1 run tag @s add obl.black_death.dont_move
execute if score @s obl.phase_transition matches 1 run tag @s add obl.dont_move
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_disabled
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.stunned] run function oblivion:tech/stun_disabled
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/remove
execute if score @s obl.phase_transition matches 1 run scoreboard players set @s abilities 0
execute if score @s obl.phase_transition matches 1 run data merge entity @s {Invulnerable:1b,NoAI:1b,NoGravity:1b}
execute if score @s obl.phase_transition matches 1 run tag @s add obl.invulnerable
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.phase_transition matches 1 run particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 1 100
execute if score @s obl.phase_transition matches 10 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/story.1
execute if score @s obl.phase_transition matches 10 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/repeat.1
execute if score @s obl.phase_transition matches 70 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/story.2
execute if score @s obl.phase_transition matches 70 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/repeat.2
execute if score @s obl.phase_transition matches 120 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/story.3
execute if score @s obl.phase_transition matches 120 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/repeat.3
execute if score @s obl.phase_transition matches 140 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/story.4
execute if score @s obl.phase_transition matches 140 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/repeat.4
execute if score @s obl.phase_transition matches 170 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/story.5
execute if score @s obl.phase_transition matches 170 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/transitions/phase_2/repeat.5

execute if score @s obl.phase_transition matches 180 run effect give @a[tag=obl.in_battle.black_death] blindness 1 0 true
execute if score @s obl.phase_transition matches 180 run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 1 0.5
execute if score @s obl.phase_transition matches 180 run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 1 0.6
execute if score @s obl.phase_transition matches 180 run playsound oblivion:misc.laugh.2 hostile @a ~ ~ ~ 1 0.9
execute if score @s obl.phase_transition matches 180 run tag @s remove obl.disable_abilities
execute if score @s obl.phase_transition matches 180 run tag @s add obl.phase.2
execute if score @s obl.phase_transition matches 180 run tag @s remove obl.phase.1
execute if score @s obl.phase_transition matches 180 run tag @s remove obl.invulnerable
execute if score @s obl.phase_transition matches 180 run tag @s remove obl.dont_move
execute if score @s obl.phase_transition matches 180 run tag @s remove obl.black_death.dont_move
execute if score @s obl.phase_transition matches 180 run data merge entity @s {Invulnerable:0b,NoAI:1b,NoGravity:1b}
execute if score @s obl.phase_transition matches 180 run scoreboard players set @s obl.phase_transition 0