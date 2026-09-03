###   S C O R E B O A R D
scoreboard players add @s[tag=!obl.disable_abilities,tag=!obl.stunned,tag=!obl.black_death.teleporting] abilities 1
scoreboard players set black_death oblivion 1
scoreboard players set obl.isbossactive oblivion 1


###   C H A R G I N G
execute if entity @s[tag=!obl.dont_move,tag=!obl.black_death.parried,tag=obl.black_death.charging] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest] unless entity @s[tag=obl.can_parry.projectile] as @e[type=magma_cube,tag=obl.boss.black_death,tag=obl.black_death.charging] run function oblivion:abilities/bosses/black_death/charged_explode
execute if entity @s[tag=!obl.dont_move,tag=!obl.black_death.parried,tag=obl.black_death.charging] as @e[type=#oblivion:all_mobs,limit=1,sort=nearest] if entity @s[tag=obl.can_parry.projectile] at @s anchored eyes positioned ^ ^ ^2.31 as @e[type=magma_cube,tag=obl.boss.black_death,limit=1,distance=..1.7] at @s run function oblivion:tech/projectiles/parrying/parry


###   P A R T I C L E S
execute positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/random_tentacle
particle minecraft:squid_ink ~ ~.85 ~ 0.35 0.35 0.35 0.03 2 normal
particle minecraft:dust 0 0 0 1 ~ ~.85 ~ 0.7 0.7 0.7 0.05 10 normal


###   B O O S T   B O S S   B A S E D   O N   T H E   P L A Y E R   A M O U N T
scoreboard players reset @s obl.player_count
execute at @a[tag=obl.in_battle.black_death,gamemode=!spectator,tag=!obl.admin] run scoreboard players add @s obl.player_count 1
execute if score @s obl.player_count matches 2.. run tag @a[tag=obl.in_battle.black_death] add obl.in_battle.not_solo
execute if score @s obl.player_count matches 2 run effect give @s strength 10 0 true
execute if score @s obl.player_count matches 3 run effect give @s resistance 10 0 true
execute if score @s obl.player_count matches 3 run effect give @s strength 10 2 true
execute if score @s obl.player_count matches 4 run effect give @s resistance 10 1 true
execute if score @s obl.player_count matches 4 run effect give @s strength 10 4 true
execute if score @s obl.player_count matches 5 run effect give @s resistance 10 2 true
execute if score @s obl.player_count matches 5 run effect give @s strength 10 6 true




###   P L A Y E R   J O I N / L E A V E
execute as @a[distance=..49,tag=!obl.in_battle.black_death,scores={obl.difficulty=1..},tag=!obl.death_boss.cd,tag=!obl.admin,gamemode=!spectator] run function oblivion:abilities/bosses/black_death/battle_join
execute as @a[distance=50..,tag=obl.in_battle.black_death] unless entity @e[type=wither_skeleton,tag=obl.phase_transition] run function oblivion:abilities/bosses/black_death/battle_leave




###   T E C H N I C A L
## GET HEATLH IN THE SCOREBOARD
execute store result score @s obl.health run data get entity @s Health
## BOSS REMOVAL
execute unless entity @s[tag=obl.disable_abilities] unless entity @a[tag=obl.in_battle.black_death] run function oblivion:abilities/bosses/black_death/disappear/no_players
## TENTACLES
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.x_plus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/x_plus.spawn
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.x_minus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/x_minus.spawn
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.y_plus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/y_plus.spawn
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.y_minus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/y_minus.spawn
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.z_plus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/z_plus.spawn
execute if entity @s[tag=obl.phase.2,tag=!obl.black_death.teleporting] unless entity @e[type=marker,tag=obl.black_death.tentacle.z_minus] positioned ~ ~.85 ~ run function oblivion:abilities/bosses/black_death/tentacles/z_minus.spawn

execute positioned ~10 ~ ~ run tag @e[type=marker,tag=obl.black_death.tentacle.x_plus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back
execute positioned ~-10 ~ ~ run tag @e[type=marker,tag=obl.black_death.tentacle.x_minus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back
execute positioned ~ ~-10 ~ run tag @e[type=marker,tag=obl.black_death.tentacle.y_plus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back
execute positioned ~ ~10 ~ run tag @e[type=marker,tag=obl.black_death.tentacle.y_minus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back
execute positioned ~ ~ ~10 run tag @e[type=marker,tag=obl.black_death.tentacle.z_plus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back
execute positioned ~ ~ ~-10 run tag @e[type=marker,tag=obl.black_death.tentacle.z_minus,tag=obl.black_death.tentacle.end,distance=15..] add obl.black_death.tentacle.move_back

execute as @e[type=marker,tag=obl.black_death.tentacle.move_back] at @s run function oblivion:abilities/bosses/black_death/tentacles/moving_back

execute as @e[type=marker,tag=obl.black_death.tentacle.found,tag=!obl.black_death.tentacle.end] at @s anchored eyes run function oblivion:tech/raycast/black_death.tentacle.move
execute as @e[type=marker,tag=obl.black_death.tentacle.found] at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0 1
execute positioned ~ ~.85 ~ facing entity @e[type=marker,tag=obl.black_death.tentacle.found] feet run function oblivion:tech/raycast/black_death.tentacle.trail
## MOVEMENT
execute if score @s obl.black_death.movement.cd matches 1.. run scoreboard players remove @s obl.black_death.movement.cd 1
execute if entity @s[tag=!obl.black_death.charging,tag=!obl.black_death.parried] unless score @s obl.black_death.movement.cd matches 1.. unless entity @a[distance=..15] run function oblivion:abilities/bosses/black_death/movement/change
execute unless block ^ ^ ^1 #oblivion:non_solid run function oblivion:abilities/bosses/black_death/movement/backwards
execute unless block ^ ^ ^.75 #oblivion:non_solid run function oblivion:abilities/bosses/black_death/movement/backwards
execute unless block ^ ^ ^.5 #oblivion:non_solid run function oblivion:abilities/bosses/black_death/movement/backwards
execute unless block ^ ^ ^.25 #oblivion:non_solid run function oblivion:abilities/bosses/black_death/movement/backwards
execute if entity @s[tag=obl.black_death.speed.1,tag=!obl.black_death.dont_move] unless entity @s[tag=obl.black_death.teleporting] unless entity @a[distance=..7,tag=obl.parry_success] if block ^ ^ ^.25 #oblivion:non_solid run tp @s ^ ^ ^.25
execute if entity @s[tag=obl.black_death.speed.2,tag=!obl.black_death.dont_move] unless entity @s[tag=obl.black_death.teleporting] unless entity @a[distance=..7,tag=obl.parry_success] if block ^ ^ ^.5 #oblivion:non_solid run tp @s ^ ^ ^.5
execute if entity @s[tag=obl.black_death.speed.3,tag=!obl.black_death.dont_move] unless entity @s[tag=obl.black_death.teleporting] unless entity @a[distance=..7,tag=obl.parry_success] if block ^ ^ ^.75 #oblivion:non_solid run tp @s ^ ^ ^.75

## TELEPORTING
execute unless entity @a[distance=..7] run scoreboard players add @s obl.black_death.teleport.time 1
execute if entity @a[distance=..7] run scoreboard players set @s obl.black_death.teleport.time 0
execute if entity @s[tag=!obl.performing_ability,tag=!obl.black_death.charging,tag=!obl.black_death.teleporting] if score @s obl.black_death.teleport.time matches 300.. run function oblivion:abilities/bosses/black_death/movement/teleport.prepare
execute if entity @s[tag=obl.black_death.teleporting] run function oblivion:abilities/bosses/black_death/movement/teleport.tick



###   P H A S E   T R A N S I T I O N S
execute if score @s[tag=obl.phase.1] obl.fake_health matches ..400 run function oblivion:abilities/bosses/black_death/transitions/phase_2



###   A B I L I T I E S
## Phase 1
execute if entity @s[tag=obl.phase.1,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/black_death/phase_1/main
## Phase 2
execute if entity @s[tag=obl.phase.2,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/black_death/phase_2/main
## Phase 3
#execute if entity @s[tag=obl.phase.3,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/black_death/phase_3/main
## Phase 4
#execute if entity @s[tag=obl.phase.4,tag=!obl.disable_abilities,tag=!obl.stunned] run function oblivion:abilities/bosses/black_death/phase_4/main

#execute if entity @s[tag=obl.check_for_ground] on target run tag @s add obl.target
#execute if entity @s[tag=obl.check_for_ground] if entity @s[nbt={OnGround:1b}] run function oblivion:abilities/bosses/black_death/on_ground


