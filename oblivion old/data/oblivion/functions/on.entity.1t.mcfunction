#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

###   A R M O R   S T A N D S
execute if entity @s[type=armor_stand] run function oblivion:tech/on.armor_stand

###   U N U S U A L
execute if entity @s[type=marker,tag=obl.circling_unusual] run function oblivion:tech/unusual/main.marker

###   S P A W N   E G G S
execute if entity @s[type=marker,tag=obl.admin_summoner] run function oblivion:tech/admin_summoner

###   P R O J E C T I L E S
execute if entity @s[type=marker,tag=obl.projectile] run function oblivion:tech/projectiles/main
execute if entity @s[type=marker,tag=obl.projectile_shooter] run function oblivion:tech/projectiles/shoot/tick
execute if entity @s[type=block_display,tag=obl.cannonball] run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/main


###   W E A P O N   S T A N D
execute if entity @s[type=armor_stand,tag=obl.weapon_stand.murasama] run function oblivion:items/murasama/weapon_stand
execute if entity @s[type=armor_stand,tag=obl.weapon_stand.yamato] run function oblivion:items/yamato/weapon_stand


###   S T R U C T U R E S
## SPAWNERS
execute if entity @s[type=marker,tag=obl.dungeon.center] run function oblivion:tech/structures/dungeon_core/main
execute if entity @s[type=marker,tag=obl.spawner] run function oblivion:tech/structures/spawner/main
execute if entity @s[type=marker,tag=obl.instant_spawner] run function oblivion:tech/structures/instant_spawner/main
## STRUCTURES
execute if entity @s[type=marker,tag=obl.coliseum.center] run function oblivion:tech/structures/list/coliseum/main
execute if entity @s[type=marker,tag=obl.lukewarm_heart] run function oblivion:tech/structures/list/lukewarm_ruins/main
execute if entity @s[type=marker,tag=obl.ghost_ship.center] run function oblivion:tech/structures/list/ghost_ship/main
execute if entity @s[type=marker,tag=obl.mountain_minecart.spawner] run function oblivion:tech/structures/list/mountain_minecart/spawner
execute if entity @s[type=marker,tag=obl.mountain_minecart.checkpoint] run function oblivion:tech/structures/list/mountain_minecart/checkpoint
execute if entity @s[type=marker,tag=obl.mountain_minecart.end] run function oblivion:tech/structures/list/mountain_minecart/endpoint



###   M I S C
execute if entity @s[type=marker,tag=obl.the_guide.marker] run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/marker.tick
execute if entity @s[type=marker,tag=obl.lukewarm_ruin.coral_growth] run function oblivion:tech/structures/list/lukewarm_ruin/coral_growth
execute if entity @s[type=marker,tag=obl.ocean_ruin.shield] run function oblivion:tech/structures/list/ocean_ruin/shield
execute if entity @s[type=marker,tag=obl.ocean_ruin.center] run function oblivion:tech/structures/list/ocean_ruin/center
execute if entity @s[type=interaction,tag=obl.ocean_ruin.container_shield] run function oblivion:tech/structures/list/ocean_ruin/container
execute if entity @s[type=marker,tag=obl.shard_of_time.copy] run function oblivion:items/accs/shard_of_time/as_copy
execute if entity @s[type=marker,tag=obl.leash_removal] unless entity @e[type=#oblivion:hostile,tag=obl.leash_removal] run kill @s
execute if entity @s[type=marker,tag=obl.crystodian_spawner] run function oblivion:mobs/overworld/crystodian.spawning
execute if entity @s[type=marker,tag=obl.cursed_shield] run function oblivion:abilities/bosses/cursed_armor/shield
execute if entity @s[type=armor_stand,tag=obl.announcement_marker] run function oblivion:tech/announcement_marker.tick
execute if entity @s[tag=obl.weeping_angel.detect_movement] run scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=obl.weeping_angel.detect_movement] unless entity @e[type=husk,predicate=oblivion:matching_score,distance=...001] run kill @s
execute if entity @s[type=marker,tag=obl.shulker_bullet_teleporter] unless entity @e[type=shulker_bullet,limit=1,sort=nearest,tag=obl.projectile.parried,distance=...2] run kill @s
execute if entity @s[type=armor_stand,tag=obl.marauder.grenade] run function oblivion:abilities/mobs/ghost_ship/marauder.grenade.main

execute if entity @s[type=marker,tag=obl.black_death.spawn_point] run function oblivion:abilities/bosses/black_death/spawn_point.tick
execute if entity @s[type=marker,tag=obl.black_death.memorial.center] run particle dust 0 0 0 0.6 ~ ~.4 ~ 0.4 0.4 0.4 0 1 normal


###   I T E M   F R A M E S
execute if entity @s[type=item_frame] run function oblivion:tech/item_frame/tick


execute if entity @s[type=marker,tag=obl.murasama_marker.cross] run function oblivion:items/murasama/temp_entities/marker.cross
execute if entity @s[type=marker,tag=obl.murasama_marker.shred] run function oblivion:items/murasama/temp_entities/marker.shred
execute if entity @s[type=marker,tag=obl.murasama_marker.spin] rotated ~ 0 positioned ^ ^ ^.1 run function oblivion:items/murasama/temp_entities/marker.spin
execute if entity @s[type=marker,tag=obl.yamato_marker.shred] run function oblivion:items/yamato/temp_entities/marker.shred

execute if entity @s[type=marker,tag=obl.temp.harvest] run function oblivion:tech/raycast/villager_harvest.forward
execute if entity @s[type=marker,tag=obl.temp.grow] run function oblivion:tech/raycast/villager_grow.forward

execute if entity @s[type=marker,tag=obl.yamato.cut] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.tick




execute if entity @s[type=trident] if entity @s[nbt={Trident:{tag:{obl.atlantis:1b}}},nbt=!{inGround:1b}] run function oblivion:items/atlantis/tick

###   A L T A R
execute if entity @s[type=marker,tag=obl.altar,scores={obl.altar.timeout=1..}] run scoreboard players remove @s obl.altar.timeout 1
execute if entity @s[type=marker,tag=obl.altar,scores={obl.altar.timeout=..0},tag=obl.altar.disabled] at @s run function oblivion:tech/altars/enabled
execute if entity @s[type=marker,tag=obl.altar,tag=!obl.altar.disabled] unless score @s obl.altar.timeout matches 1.. at @s run function oblivion:tech/altars/main
