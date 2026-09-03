#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

###   F I R S T   J O I N
execute unless entity @s[tag=obl.first_join] run function oblivion:tech/player/first_join/init
execute if entity @s[tag=obl.player.materializing] run function oblivion:tech/player/materializing/main
execute if entity @s[tag=obl.player.materializing.post_effects] run function oblivion:tech/player/materializing/post_effects
scoreboard players operation #id.temp obl.id = @s obl.id

###   P L A Y E R ' S   N B T   T O   S T O R A G E
data modify storage oblivion:player Player set from entity @s {}
execute store result score @s obl.accessory_slot.1 run data get storage oblivion:player Player.Inventory[{Slot:9b}].tag.CustomModelData
execute store result score @s obl.accessory_slot.2 run data get storage oblivion:player Player.Inventory[{Slot:18b}].tag.CustomModelData
execute store result score @s obl.accessory_slot.3 run data get storage oblivion:player Player.Inventory[{Slot:27b}].tag.CustomModelData
execute store result score @s obl.isonfire run data get storage oblivion:player Player.Fire

###   H I T T I N G
execute if score @s obl.hit_cooldown matches 0.. run scoreboard players remove @s obl.hit_cooldown 1
execute if score @s obl.hit_cooldown matches 0 run tag @s remove obl.hit_cooldown
tag @s remove obl.temp.success_hit

###   L I F E   T I C K
execute if entity @s[tag=obl.first_join,tag=!obl.player.materializing] run function oblivion:tech/player/life_tick/main

#################################################################################################################################################################

###   W A L K I N G   /   S P R I N T I N G   /   F A L L I N G
tag @s remove obl.walking
tag @s remove obl.sprinting
execute if predicate oblivion:stepping_on.non_solid run tag @s add obl.mid_air
execute if score @s[tag=!obl.mid_air] obl.walking matches 1.. run function oblivion:tech/is.walking
execute if score @s[tag=!obl.mid_air] obl.sprinting matches 1.. run function oblivion:tech/is.sprinting
execute if entity @s[tag=obl.mid_air] unless predicate oblivion:stepping_on.non_solid run function oblivion:tech/on_ground

###   D E A T H   /   R E S P A W N
## DEATH
execute if score @s obl.death matches 1.. run function oblivion:tech/on.player_death
## RESPAWN
execute if score @s[tag=!obl.alive] obl.player_health matches 1.. run function oblivion:tech/on.player_respawn
## PENDANT OF MEMORY
execute unless entity @s[tag=obl.has.pendant_of_memory] if entity @s[nbt={Inventory:[{tag:{obl.item.pendant_of_memory:1b}}]}] run tag @s add obl.has.pendant_of_memory
execute unless entity @s[tag=obl.has.pendant_of_memory.rusty] if entity @s[nbt={Inventory:[{tag:{obl.item.pendant_of_memory.rusty:1b}}]}] run tag @s add obl.has.pendant_of_memory.rusty
execute if entity @s[tag=obl.has.pendant_of_memory] unless entity @s[nbt={Inventory:[{tag:{obl.item.pendant_of_memory:1b}}]}] run tag @s remove obl.has.pendant_of_memory
execute if entity @s[tag=obl.has.pendant_of_memory.rusty] unless entity @s[nbt={Inventory:[{tag:{obl.item.pendant_of_memory.rusty:1b}}]}] run tag @s remove obl.has.pendant_of_memory.rusty

###   E F F E C T S
function oblivion:tech/player_effects
execute if entity @s[tag=obl.glow_berried] at @s run function oblivion:qol/glow_berries/tick
execute if predicate oblivion:items/hold.glow_berries.off run tag @s add obl.glow_berries.offhand
execute unless predicate oblivion:items/hold.glow_berries.off run tag @s remove obl.glow_berries.offhand

###   O B L I V I O N   E F F E C T S
execute if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_tick
execute if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/tick
execute if entity @s[tag=obl.stunned] run function oblivion:tech/stun_tick
execute if entity @s[tag=obl.cursed] run function oblivion:tech/curse_tick
execute if entity @s[tag=obl.bleeding] run function oblivion:tech/bleeding_tick

###   M I S C
## QUESTS
function oblivion:tech/journal/quests/tech/main

#################################################################################################################################################################

###   P A R R Y I N G
## PARRY CD
execute if score @s obl.parry.cd matches 1 run function oblivion:tech/parrying/ready
execute if score @s obl.parry.cd matches 1.. run scoreboard players remove @s obl.parry.cd 1
## DETECT SHIELD BLOCKING
execute if score @s obl.shield_cleanup matches 1.. run function oblivion:tech/parrying/blocking.end
execute if score @s obl.shield_using matches 1.. run scoreboard players add @s obl.shield_cleanup 1
## FAILING
execute if entity @s[tag=obl.parry_success] run scoreboard players add @s obl.parry.tick 1
execute if score @s[tag=obl.parry_success.direct] obl.parry.tick matches 7.. run function oblivion:tech/parrying/direct/fail
execute if score @s[tag=obl.parry_success.projectile] obl.parry.tick matches 20.. run function oblivion:tech/parrying/projectile/fail
## BUFFS
execute if entity @s[tag=obl.empowered.parry] run scoreboard players remove @s obl.parry.empower_tick 1
execute if score @s[tag=obl.empowered.parry.direct] obl.parry.empower_tick matches 0 run function oblivion:tech/parrying/direct/buff.end
execute if score @s[tag=obl.empowered.parry.projectile] obl.parry.empower_tick matches 0 run function oblivion:tech/parrying/projectile/buff.end
## SOUND
execute if entity @s[tag=obl.parry.sound_pitch] run scoreboard players remove @s obl.parry.after_tick 1
execute if score @s[tag=obl.parry.sound_pitch] obl.parry.after_tick matches 0 run function oblivion:tech/parrying/reset.sound_pitch
## MISC
execute if entity @s[tag=obl.just_parried_fucking_lightning] run particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 4 5
execute if score @s obl.parry.spam_cd matches 1.. run scoreboard players remove @s obl.parry.spam_cd 1
execute if score @s obl.parry.spam_cd matches 0 run function oblivion:tech/parrying/spam.remove


#################################################################################################################################################################

###   B O W   A B I L I T I E S
## DRAWING
execute if score @s obl.bow_cleanup matches 1.. run function oblivion:tech/bow/cleanup
execute if score @s obl.bow_using matches 1.. run scoreboard players add @s obl.bow_cleanup 1
## SHOOT
execute if score @s obl.bow_shot matches 1.. run function oblivion:tech/bow/shot

###   W E A P O N   A B I L I T I E S
## Cursed Armor Sword
execute if score @s obl.used.cursed_armor_sword matches 1 if data storage oblivion:player Player{Inventory:[{tag:{CustomModelData:7171}}]} run function oblivion:items/abilities/cursed_armor_sword/cd
## Murasama
execute if score @s obl.murasama.out_of_battle matches 1.. if predicate oblivion:items/hold.murasama.both run scoreboard players remove @s obl.murasama.out_of_battle 1
execute if score @s[tag=!obl.murasama_offhand] obl.murasama.out_of_battle matches 0 if score @s obl.murasama.blood matches 1.. run function oblivion:items/murasama/out_of_battle
execute if score @s obl.murasama.used.ability matches 1 if data storage oblivion:player Player{Inventory:[{tag:{obl.murasama:1b}}]} run function oblivion:items/abilities/murasama/ability.cd
execute if score @s obl.difficulty matches 11.. if predicate oblivion:items/hold.murasama.both run function oblivion:items/abilities/murasama/main
execute if entity @s[tag=obl.murasama_offhand] run function oblivion:items/abilities/murasama/ability.time
execute if entity @s[tag=obl.empowered.murasama] run function oblivion:items/abilities/murasama/ripper.time
execute if entity @s[tag=obl.empowered.murasama] unless predicate oblivion:items/hold.murasama.both run function oblivion:items/abilities/murasama/ripper.end
execute if score @s obl.murasama.time.taunt matches 1.. run scoreboard players remove @s obl.murasama.time.taunt 1
execute if score @s obl.murasama.startup.ripper matches 1.. unless predicate oblivion:items/hold.murasama.both run scoreboard players set @s obl.murasama.startup.ripper 0
## Yamato
execute if score @s obl.yamato.out_of_battle matches 1.. if predicate oblivion:items/hold.yamato.both run scoreboard players remove @s obl.yamato.out_of_battle 1
execute if score @s[tag=!obl.yamato_offhand,tag=!obl.yamato.preparing_ability,tag=!obl.yamato.performing_ability] obl.yamato.out_of_battle matches 0 if score @s obl.yamato.style matches 1.. run function oblivion:items/yamato/out_of_battle
execute if score @s obl.yamato.used.ability matches 1 if data storage oblivion:player Player{Inventory:[{tag:{obl.yamato:1b}}]} run function oblivion:items/abilities/yamato/ability.cd
execute if score @s obl.difficulty matches 11.. if predicate oblivion:items/hold.yamato.both run function oblivion:items/abilities/yamato/main
execute if score @s obl.yamato.time.taunt matches 1.. run scoreboard players remove @s obl.yamato.time.taunt 1

###   T O O L   A B I L I T I E S
## Phantom Pickaxe
execute if entity @s[tag=obl.empowered.phantom_pickaxe] run function oblivion:items/abilities/phantom_pickaxe/ability.tick
## Clock
execute if predicate oblivion:items/hold.oblivion_clock unless entity @s[tag=obl.used_clock] run function oblivion:items/clock
execute unless predicate oblivion:items/hold.oblivion_clock if entity @s[tag=obl.used_clock] run tag @s remove obl.used_clock

#################################################################################################################################################################

###   A C C E S S O R I E S
execute if entity @s[tag=obl.alive] run function oblivion:items/accs/main
function oblivion:tech/player.looking

###   A R M O R
execute if score @s obl.difficulty matches 2.. if predicate oblivion:items/full_set.cursed_armor run function oblivion:items/set_bonuses/cursed_armor/main
execute if entity @s[tag=obl.empowered.cursed_armor] unless predicate oblivion:items/full_set.cursed_armor run function oblivion:items/set_bonuses/cursed_armor/main
execute if score @s obl.difficulty matches 2.. if predicate oblivion:items/full_set.viking run function oblivion:items/set_bonuses/viking/main
execute if entity @s[tag=obl.empowered.viking_set] unless predicate oblivion:items/full_set.viking run function oblivion:items/set_bonuses/viking/empower/cleanup


###   S T A C K A B L E   E F F E C T S
function oblivion:tech/stackable_effects
function oblivion:items/empowerers/main
## EMPOWERERS
execute if score @s obl.process.emp.four_symbols matches 1.. run function oblivion:items/empowerers/four_symbols/ability
# Epsilon
execute if score @s obl.used.emp.epsilon matches 1 run function oblivion:items/empowerers/epsilon/cd
execute if score @s obl.process.emp.epsilon matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/epsilon/cancel
# Psi
execute if score @s obl.used.emp.psi matches 1 run function oblivion:items/empowerers/psi/cd
execute if score @s obl.process.emp.psi matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/psi/cancel
# Sigma
execute if score @s obl.used.emp.sigma matches 1 run function oblivion:items/empowerers/sigma/cd
execute if score @s obl.process.emp.sigma matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/sigma/cancel
# Omega
execute if score @s obl.used.emp.omega matches 1 run function oblivion:items/empowerers/omega/cd
execute if score @s obl.process.emp.omega matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/omega/cancel
# Shanty
execute if score @s obl.used.emp.shanty matches 1 run function oblivion:items/empowerers/shanty/cd
execute if score @s obl.process.emp.shanty matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/shanty/cancel
# Scarab
execute if score @s obl.used.emp.scarab matches 1 run function oblivion:items/empowerers/scarab/cd
execute if score @s obl.process.emp.scarab matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/scarab/cancel
# Midas
execute if score @s obl.used.emp.midas matches 1 run function oblivion:items/empowerers/midas/cd
execute if score @s obl.process.emp.midas matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/midas/cancel
# Super Instinct
execute if score @s obl.used.emp.instinct matches 1 run function oblivion:items/empowerers/instinct/cd
execute if score @s obl.process.emp.instinct matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/instinct/cancel
# Mysterious Elixir
execute if score @s obl.used.emp.elixir matches 1 run function oblivion:items/empowerers/elixir/cd
execute if score @s obl.process.emp.elixir matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/elixir/cancel
# Cursed Pact
execute if score @s obl.used.emp.pact matches 1 run function oblivion:items/empowerers/pact/cd
execute if score @s obl.process.emp.pact matches 1..14 unless predicate oblivion:is.sneaking run function oblivion:items/empowerers/pact/cancel

###   V I L L A G E R S
execute if entity @s[tag=obl.empowered.weaponsmith] run function oblivion:qol/villagers/effects/weaponsmith.tick
execute if entity @s[tag=obl.empowered.cartographer] run function oblivion:qol/villagers/effects/cartographer.tick
execute if entity @s[tag=obl.empowered.mason] run function oblivion:qol/villagers/effects/mason.tick
execute if entity @s[tag=obl.empowered.fisherman] run function oblivion:qol/villagers/effects/fisherman.tick
execute if entity @s[tag=obl.empowered.cleric] run function oblivion:qol/villagers/effects/cleric.tick
execute if entity @s[tag=obl.empowered.armorer] run function oblivion:qol/villagers/effects/armorer.tick
execute if entity @s[tag=obl.empowered.butcher] run function oblivion:qol/villagers/effects/butcher.tick
execute if entity @s[tag=obl.empowered.fletcher] run function oblivion:qol/villagers/effects/fletcher.tick

###   B O S S E S
execute if entity @s[tag=obl.boss_intro] run function oblivion:abilities/bosses/intro/main
## Black Death Memorial
execute if entity @s[tag=!obl.near.black_death_memorial,tag=!obl.admin] if entity @e[type=marker,tag=obl.black_death.spawn_point,tag=!obl.summoning,distance=..75] run function oblivion:abilities/bosses/black_death/memorial.player_near
execute if entity @s[tag=obl.near.black_death_memorial,tag=!obl.admin,tag=!obl.black_death_memorial.prologue] unless entity @e[type=marker,tag=obl.black_death.spawn_point,distance=..100] run function oblivion:abilities/bosses/black_death/memorial.player_far
execute if entity @s[tag=obl.near.black_death_memorial,tag=!obl.admin] run effect give @s darkness 5 0 true
execute if entity @s[tag=obl.black_death_memorial.prologue] run function oblivion:abilities/bosses/black_death/transitions/prologue

###   M O B   P A R T I C L E S
execute as @e[type=#oblivion:custom_particles,distance=..30,tag=!obl.temp.particle_shown] at @s run function oblivion:mobs/particles/main

###   G A M E M O D E   S W I T C H
execute if entity @s[tag=!obl.gamemode.survival,gamemode=survival] run function oblivion:tech/gamemode_switch
execute if entity @s[tag=!obl.gamemode.adventure,gamemode=adventure] run function oblivion:tech/gamemode_switch
execute if entity @s[tag=!obl.gamemode.creative,gamemode=creative] run function oblivion:tech/gamemode_switch
execute if entity @s[tag=!obl.gamemode.spectator,gamemode=spectator] run function oblivion:tech/gamemode_switch

###   B A D   A P P L E
## REQUIRES "OBLIVION ADDITIONS" TO WORK
execute if entity @s[tag=obl.playing.bad_apple] run function oblivion:tech/bad_apple/tick
# I wasted more time on that than I should have

###   U N U S U A L
## DEFAULT
execute if entity @s[tag=obl.alive,predicate=oblivion:unusual,predicate=!oblivion:is.sneaking,tag=!obl.gamemode.spectator] run function oblivion:tech/unusual/main
## CIRCLING
execute if entity @s[tag=obl.alive,predicate=oblivion:circling_unusual,predicate=!oblivion:is.sneaking,tag=!obl.gamemode.spectator] run function oblivion:tech/unusual/check

### Check if player has tags from Altar's Player Enchant ritual but there are no working altars nearby
execute if entity @s[tag=obl.player_enchanting.preparing] unless entity @e[type=marker,tag=obl.altar.preparing,distance=...5] run tag @s remove obl.player_enchanting.preparing
execute if entity @s[tag=obl.player_enchanting.process] unless entity @e[type=marker,tag=obl.altar.working,distance=...5] run function oblivion:tech/altars/rituals/player_enchantment/enchant.bad

### Make Oblivion mobs play custom sound when hurt near the player (That's an NBT Check ;v; not the player's one at least)
execute as @e[type=#oblivion:aoe,type=!player,distance=..6] if entity @s[nbt={HurtTime:10s}] at @s run function oblivion:sounds

### Check if player got damaged
execute if score @s obl.player_damaged matches 1.. run function oblivion:got_hit

### Atlantis functions
execute if score @s obl.atlantis.used matches 1.. run function oblivion:items/atlantis/atlantis_used
execute if predicate oblivion:items/hold.atlantis run function oblivion:items/atlantis/buffs

### Replace Minecraft's Hoes to custom Scythe weapon
execute if predicate oblivion:items/hold.wooden_hoe run item modify entity @s weapon.mainhand oblivion:scythe_wooden
execute if predicate oblivion:items/hold.stone_hoe run item modify entity @s weapon.mainhand oblivion:scythe_stone
execute if predicate oblivion:items/hold.iron_hoe run item modify entity @s weapon.mainhand oblivion:scythe_iron
execute if predicate oblivion:items/hold.golden_hoe run item modify entity @s weapon.mainhand oblivion:scythe_golden
execute if predicate oblivion:items/hold.diamond_hoe run item modify entity @s weapon.mainhand oblivion:scythe_diamond
execute if predicate oblivion:items/hold.netherite_hoe run item modify entity @s weapon.mainhand oblivion:scythe_netherite

### Add Parry Frame lore to the shields
execute if predicate oblivion:items/hold.vanilla_shield run item modify entity @s weapon.mainhand oblivion:shield
execute if predicate oblivion:items/hold.vanilla_shield.off run item modify entity @s weapon.offhand oblivion:shield
execute if score @s obl.shield_using matches 0 if score @s obl.shield_preparing matches 1.. run tag @s remove obl.can_parry
execute if score @s obl.shield_using matches 0 if score @s obl.shield_preparing matches 1.. run scoreboard players set @s obl.shield_preparing 0

### Replace Minecraft's vanilla Clocks to custom Oblivion Clock
execute as @a unless predicate oblivion:is.sneaking if predicate oblivion:items/hold.clock run item modify entity @s weapon.mainhand oblivion:clock

### Particles above animals when holding their food
execute if predicate oblivion:hold.breeding_items run function oblivion:tech/qol/animal_breeding_particle

### Remove No-Hit tag when player is in a boss battle without the totem of dying
execute if entity @s[tag=obl.in_battle.boss,tag=obl.in_battle.no_hit] unless predicate oblivion:items/hold.totem_of_dying.both run tag @s remove obl.in_battle.no_hit

### Difficulty level restrictions
## Nether portal
execute unless entity @s[scores={obl.difficulty=3..}] run function oblivion:tech/difficulty/disable/nether.check

### Announce the player about possibility to skip the boss transition
execute if entity @s[tag=obl.can_skip_transition] unless score @s obl.player_sneaking matches 1.. run title @s actionbar ["",{"text":"[","color":"gold"},{"text":"Удерживайте ","color":"yellow"},{"keybind":"key.sneak","color":"red"},{"text":" чтобы пропустить","color":"yellow"},{"text":"]","color":"gold"}]

execute if entity @s[tag=obl.temp.strong_parry] run scoreboard players add @s obl.temp_tick 1
execute if entity @s[tag=obl.temp.strong_parry] if score @s obl.temp_tick matches 10.. run tag @s remove obl.temp.strong_parry
execute if entity @s[tag=obl.temp.yamato.performing_shred] run scoreboard players add @s obl.temp_tick 1
execute if entity @s[tag=obl.temp.yamato.performing_shred] if score @s obl.temp_tick matches 10.. run tag @s remove obl.temp.yamato.performing_shred
execute if entity @s[tag=obl.temp.murasama.performing_shred] run scoreboard players add @s obl.temp_tick 1
execute if entity @s[tag=obl.temp.murasama.performing_shred] if score @s obl.temp_tick matches 5.. run tag @s remove obl.temp.murasama.performing_shred
execute if entity @s[tag=obl.temp.murasama.performing_dcross] run scoreboard players add @s obl.temp_tick 1
execute if entity @s[tag=obl.temp.murasama.performing_dcross] if score @s obl.temp_tick matches 3.. run tag @s remove obl.temp.murasama.performing_dcross
execute unless entity @s[tag=obl.temp.murasama.performing_dcross] unless entity @s[tag=obl.temp.murasama.performing_shred] unless entity @s[tag=obl.temp.strong_parry] unless entity @s[tag=obl.temp.yamato.performing_shred] if score @s obl.temp_tick matches 1.. run scoreboard players set @s obl.temp_tick 0

###   S N E A K I N G
execute if predicate oblivion:is.sneaking run function oblivion:tech/on.player_sneaking
execute if score @s obl.player_sneaking matches 1.. unless predicate oblivion:is.sneaking run function oblivion:tech/on.player_sneaking.end
execute if score @s obl.double_sneak.time matches 1.. run scoreboard players remove @s obl.double_sneak.time 1


## MISC
execute anchored eyes positioned ^ ^ ^ if entity @e[type=marker,tag=obl.ocean_ruin.shield,distance=..1.8] run function oblivion:tech/structures/list/ocean_ruin/oxygen
execute if score @s obl.shard_of_time.teleporting matches 1.. run scoreboard players remove @s obl.shard_of_time.teleporting 1
execute if score @s obl.enchantment_fading.announced matches 1.. run scoreboard players remove @s obl.enchantment_fading.announced 1
execute if score @s obl.journal_delay matches 1.. run function oblivion:tech/journal/notes/delay
execute if entity @s[tag=obl.alive,tag=!obl.gamemode.spectator] anchored eyes run function oblivion:abilities/mobs/weeping_angel/check/direction
execute if entity @s[tag=obl.unusual.guardian.red] run scoreboard players remove @s obl.unusual.guardian_time 1
execute if entity @s[tag=obl.unusual.guardian.red,scores={obl.unusual.guardian_time=0}] run tag @s remove obl.unusual.guardian.red
execute unless score @s obl.player_max_health matches 20.. run scoreboard players set @s obl.player_max_health 20
execute if entity @s[tag=obl.glowing_receiver.announced] run scoreboard players remove @s obl.glowing_receiver.player_cd 1
execute if entity @s[tag=obl.glowing_receiver.announced] if score @s obl.glowing_receiver.player_cd matches 0 run tag @s remove obl.glowing_receiver.announced

execute if entity @s[tag=obl.temp.reset_actionbar,tag=!obl.temp.found_entity] run function oblivion:items/accs/oblivion_monocle/cleanup
tag @s remove obl.temp.found_entity

execute if entity @s[tag=cookietotemused] run function oblivion:tech/xmas/cookietotemeffects

execute if score @s obl.atlantis.used matches 1.. as @e[type=trident,nbt={Trident:{tag:{obl.atlantis:1b}}},nbt={inGround:1b}] at @s run scoreboard players set @a obl.atlantis.used 0