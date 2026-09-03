scoreboard players add @s obl.phase_transition 1
particle dust 0.8 1 0.8 0.4 ~ ~.3 ~ 0.3 0.3 0.3 0.01 5 force
execute anchored eyes run tp @s ~ ~.015 ~ facing entity @p eyes

execute if score @s obl.phase_transition matches 1 run tag @s remove obl.performing_dash
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/transitions/second_half.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/transitions/second_half.3
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/transitions/second_half.4
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/transitions/second_half.5
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_back_down.1
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_back_down.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_back_down.3
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_back_down.4
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_down.1
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_down.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/black_death/dashing/up_down.3
execute if score @s obl.phase_transition matches 1 as @a[tag=obl.in_battle.black_death,tag=!obl.in_battle.not_solo,limit=1,sort=nearest] if score @s obl.boss.black_death.win_count matches 1.. run tag @s add obl.can_skip_transition
execute if score @s obl.phase_transition matches 1 as @a[tag=obl.in_battle.black_death] run function oblivion:music/end
execute if score @s obl.phase_transition matches 1 run scoreboard players set stop obl.boss_time 1
execute if score @s obl.phase_transition matches 1 as @a[tag=obl.in_battle.black_death] store result score @s obl.boss_time run time query gametime
execute if score @s obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s obl.phase_transition matches 1 run scoreboard players set @s abilities 0
execute if score @s obl.phase_transition matches 1 run data merge entity @s {Invulnerable:1b}
execute if score @s obl.phase_transition matches 1 run tag @s add obl.invulnerable
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.ghast.death hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 1 if entity @s[tag=!obl.first_appearance] run scoreboard players set @s obl.phase_transition 1000

execute if score @s obl.phase_transition matches 1 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.1
execute if score @s obl.phase_transition matches 70 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.2
execute if score @s obl.phase_transition matches 140 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.3
execute if score @s obl.phase_transition matches 210 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.4
execute if score @s obl.phase_transition matches 280 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.5
execute if score @s obl.phase_transition matches 340 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.6
execute if score @s obl.phase_transition matches 420 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.7
execute if score @s obl.phase_transition matches 500 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/story.8
execute if score @s obl.phase_transition matches 540 run function oblivion:abilities/bosses/black_death/disappear/death

execute if score @s obl.phase_transition matches 1000 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.1
execute if score @s obl.phase_transition matches 1070 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.2
execute if score @s obl.phase_transition matches 1140 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.3
execute if score @s obl.phase_transition matches 1210 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.4
execute if score @s obl.phase_transition matches 1280 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.5
execute if score @s obl.phase_transition matches 1320 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.6
execute if score @s obl.phase_transition matches 1340 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.7
execute if score @s obl.phase_transition matches 1360 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/death/repeat.8
execute if score @s obl.phase_transition matches 1385 run function oblivion:abilities/bosses/black_death/disappear/death
