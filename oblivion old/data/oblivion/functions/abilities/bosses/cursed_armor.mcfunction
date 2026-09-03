###   S C O R E B O A R D
scoreboard players add @s[tag=!obl.disable_abilities,tag=!obl.stunned] abilities 1
scoreboard players set cursed_armor_alive oblivion 1
scoreboard players set obl.isbossactive oblivion 1




###   B O O S T   B O S S   B A S E D   O N   T H E   P L A Y E R   A M O U N T
scoreboard players reset @s obl.player_count
execute at @a[tag=obl.in_battle.cursed_armor,gamemode=!spectator,tag=!obl.admin] run scoreboard players add @s obl.player_count 1
execute if score @s obl.player_count matches 2.. run tag @a[tag=obl.in_battle.cursed_armor] add obl.in_battle.not_solo
execute if score @s obl.player_count matches 2 run effect give @s strength 10 0 true
execute if score @s obl.player_count matches 3 run effect give @s resistance 10 0 true
execute if score @s obl.player_count matches 3 run effect give @s strength 10 2 true
execute if score @s obl.player_count matches 4 run effect give @s resistance 10 1 true
execute if score @s obl.player_count matches 4 run effect give @s strength 10 4 true
execute if score @s obl.player_count matches 5 run effect give @s resistance 10 2 true
execute if score @s obl.player_count matches 5 run effect give @s strength 10 6 true




###   A R E N A   C L E A R I N G
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace water
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace lava
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire




###   P L A Y E R   J O I N / L E A V E
execute as @a[distance=..49,tag=!obl.in_battle.cursed_armor,scores={obl.difficulty=1..},tag=!obl.death_boss.cd,tag=!obl.admin,gamemode=!spectator] run function oblivion:abilities/bosses/cursed_armor/battle_join
execute as @a[distance=50..,tag=obl.in_battle.cursed_armor] unless entity @e[type=wither_skeleton,tag=obl.phase_transition] run function oblivion:abilities/bosses/cursed_armor/battle_leave




###   T E C H N I C A L
## GET HEATLH IN THE SCOREBOARD
execute store result score @s obl.health run data get entity @s Health
## BOSS REMOVAL
execute unless entity @s[tag=obl.disable_abilities] unless entity @a[tag=obl.in_battle.cursed_armor] run function oblivion:abilities/bosses/cursed_armor/disappear/no_players
execute unless entity @s[tag=obl.disable_abilities] if score obl.isday oblivion matches 1 run function oblivion:abilities/bosses/cursed_armor/disappear/day
## EXECUTE FUNCTIONS ON ARMOR PARTS
execute as @e[tag=obl.cursed_armor.part] run function oblivion:abilities/bosses/cursed_armor/armor_parts/main
## EXECUTE FUNCTIONS ON SPIRIT MINIONS
execute unless entity @e[type=vex,tag=obl.cursed_armor.minion.selected] run tag @e[type=vex,tag=obl.cursed_armor.minion,limit=1,sort=random] add obl.cursed_armor.minion.selected
execute as @e[type=vex,tag=obl.cursed_armor.minion] at @s run function oblivion:abilities/bosses/cursed_armor/minion
## PARTICLES
execute if entity @s[tag=obl.phase.1] anchored eyes run particle dust 0.2 1 0.2 0.7 ^.15 ^ ^.3 0 0 0 0 1 force
execute if entity @s[tag=obl.phase.1] anchored eyes run particle dust 0.2 1 0.2 0.7 ^-.15 ^ ^.3 0 0 0 0 1 force
execute if entity @s[tag=obl.cursed_armor.first_half] anchored eyes run particle dust 0 0.9 0 1.5 ^ ^ ^.001 0 0 0 0 1 force
execute if entity @s[tag=obl.cursed_armor.first_half] anchored eyes run particle dust 0.2 1 0.2 0.7 ~ ~1.5 ~ 0.4 1 0.4 0 5 force
execute if entity @s[tag=obl.cursed_armor.second_half] anchored eyes run particle dust 0.2 1 0.2 2 ^ ^ ^.001 0 0 0 0 1 force
execute if entity @s[tag=obl.cursed_armor.second_half] anchored eyes run particle dust 0.6 1 0.6 0.7 ~ ~1.5 ~ 0.4 1 0.4 0 5 force
execute if entity @s[tag=obl.phase.3,tag=!obl.true_invisibility] run particle dust 0.6 1 0.6 1 ~ ~.4 ~ 0 0 0 0.01 1 force
execute if entity @s[tag=obl.phase.4,tag=!obl.true_invisibility] run particle dust 0.8 1 0.8 1 ~ ~.4 ~ 0 0 0 0.01 1 force
execute if entity @s[nbt={NoAI:1b},tag=!obl.phase.3,tag=!obl.phase.4] if block ~ ~-.3 ~ air anchored eyes rotated ~ 0 positioned ^ ^-.25 ^-.35 run function oblivion:tech/unusual/effects/chestplate/cursed_wings




###   P H A S E   T R A N S I T I O N S
execute if score @s[tag=obl.phase.1] obl.fake_health matches ..0 run function oblivion:abilities/bosses/cursed_armor/transitions/phase_2
execute if score @s[tag=obl.phase.2,tag=!obl.cursed_armor.second_half,tag=!obl.disable_abilities] obl.fake_health matches ..150 run scoreboard players add @s obl.phase_transition 0
execute if score @s[tag=obl.phase.2,tag=!obl.cursed_armor.second_half,tag=!obl.disable_abilities] obl.fake_health matches ..150 run function oblivion:abilities/bosses/cursed_armor/transitions/second_half.1
execute if score @s[tag=obl.phase.2] obl.fake_health matches ..0 run function oblivion:abilities/bosses/cursed_armor/transitions/phase_3
execute if entity @s[tag=obl.phase.3] unless entity @e[type=wither_skeleton,tag=obl.cursed_armor.part] run function oblivion:abilities/bosses/cursed_armor/transitions/phase_4
execute unless entity @e[type=wither_skeleton,tag=obl.cursed_armor.part] if score @s[tag=obl.phase.4] obl.fake_health matches ..0 run function oblivion:abilities/bosses/cursed_armor/transitions/death




###   A B I L I T I E S
## Phase 1
execute if entity @s[tag=obl.phase.1,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/cursed_armor/phase_1/main
## Phase 2
execute if entity @s[tag=obl.phase.2,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/cursed_armor/phase_2/main
## Phase 3
execute if entity @s[tag=obl.phase.3,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/cursed_armor/phase_3/main
## Phase 4
execute if entity @s[tag=obl.phase.4,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/cursed_armor/phase_4/main

execute if entity @s[tag=obl.check_for_ground] on target run tag @s add obl.target
execute if entity @s[tag=obl.check_for_ground] if entity @s[nbt={OnGround:1b}] run function oblivion:abilities/bosses/cursed_armor/on_ground