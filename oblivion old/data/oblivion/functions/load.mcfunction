execute unless score obl.reload oblivion matches 1 run tellraw @a {"text": "okzerus's oblivion datapack successfully installed", "color": "#203ee6","bold": true}
scoreboard players set obl.reload oblivion 0

### Sсhedule functions

function oblivion:on.1t
function oblivion:on.5t
function oblivion:on.1s
function oblivion:on.5s

function oblivion:ticksheduled
function oblivion:undergroundsheduled
function oblivion:dnlsheduled
function oblivion:hoessheduled
function oblivion:tick2
function oblivion:time20t

function oblivion:difficulty
function oblivion:eventtick
function oblivion:accscd
function oblivion:playersheduled
function oblivion:abilities
function oblivion:playersheduled2



function oblivion:particles
function oblivion:accessories
function oblivion:sounds

function oblivion:totick/announce

function oblivion:mobs/particles/1tick
function oblivion:mobs/particles/6tick

function oblivion:tech/find_looking/internal/load

###   S C O R E B O A R D
## Empowerers
scoreboard objectives add obl.stackable.strength dummy
scoreboard objectives add obl.stackable.speed dummy
scoreboard objectives add obl.stackable.haste dummy
scoreboard objectives add obl.stackable.resistance dummy
scoreboard objectives add obl.stackable.jump_boost dummy
scoreboard objectives add obl.stackable.health_boost dummy
scoreboard objectives add obl.stackable.luck dummy

scoreboard objectives add obl.process.emp.four_symbols dummy
scoreboard objectives add obl.used.emp.epsilon dummy
scoreboard objectives add obl.cd.emp.epsilon dummy
scoreboard objectives add obl.process.emp.epsilon dummy
scoreboard objectives add obl.used.emp.psi dummy
scoreboard objectives add obl.cd.emp.psi dummy
scoreboard objectives add obl.process.emp.psi dummy
scoreboard objectives add obl.used.emp.sigma dummy
scoreboard objectives add obl.cd.emp.sigma dummy
scoreboard objectives add obl.process.emp.sigma dummy
scoreboard objectives add obl.used.emp.omega dummy
scoreboard objectives add obl.cd.emp.omega dummy
scoreboard objectives add obl.process.emp.omega dummy
scoreboard objectives add obl.used.emp.shanty dummy
scoreboard objectives add obl.cd.emp.shanty dummy
scoreboard objectives add obl.process.emp.shanty dummy
scoreboard objectives add obl.used.emp.instinct dummy
scoreboard objectives add obl.cd.emp.instinct dummy
scoreboard objectives add obl.process.emp.instinct dummy
scoreboard objectives add obl.count.emp.instinct dummy
scoreboard objectives add obl.music.emp.instinct dummy
scoreboard objectives add obl.used.emp.elixir dummy
scoreboard objectives add obl.cd.emp.elixir dummy
scoreboard objectives add obl.process.emp.elixir dummy
scoreboard objectives add obl.used.emp.pact dummy
scoreboard objectives add obl.cd.emp.pact dummy
scoreboard objectives add obl.process.emp.pact dummy

## Weapons
# Murasama
scoreboard objectives add obl.murasama.slash dummy
scoreboard objectives add obl.murasama.blood dummy
scoreboard objectives add obl.murasama.out_of_battle dummy
scoreboard objectives add obl.murasama.time.taunt dummy
scoreboard objectives add obl.murasama.time.voice dummy
scoreboard objectives add obl.murasama.temp_tick dummy
scoreboard objectives add obl.murasama.startup.ripper dummy
scoreboard objectives add obl.murasama.time.ripper dummy
scoreboard objectives add obl.murasama.time.ability dummy
scoreboard objectives add obl.murasama.used.ability dummy
scoreboard objectives add obl.murasama.cd.ability dummy
# Yamato
scoreboard objectives add obl.yamato.slash dummy
scoreboard objectives add obl.yamato.style dummy
scoreboard objectives add obl.yamato.out_of_battle dummy
scoreboard objectives add obl.yamato.time.taunt dummy
scoreboard objectives add obl.yamato.time.voice dummy
scoreboard objectives add obl.yamato.temp_tick dummy
scoreboard objectives add obl.yamato.time.swords dummy
scoreboard objectives add obl.yamato.time.ability dummy
scoreboard objectives add obl.yamato.cutting.ability dummy
scoreboard objectives add obl.yamato.used.ability dummy
scoreboard objectives add obl.yamato.cd.ability dummy

## Villagers
scoreboard objectives add obl.villager.used dummy
scoreboard objectives add obl.villager.cooldown dummy
scoreboard objectives add obl.villager.harvest.up dummy
scoreboard objectives add obl.villager.harvest.forward dummy
scoreboard objectives add obl.villager.grow.up dummy
scoreboard objectives add obl.villager.grow.forward dummy
scoreboard objectives add obl.villager.interacted minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add obl.cd.villager_emp.butcher dummy
scoreboard objectives add obl.cd.villager_emp.armorer dummy
scoreboard objectives add obl.cd.villager_emp.mason dummy
scoreboard objectives add obl.cd.villager_emp.weaponsmith dummy
scoreboard objectives add obl.cd.villager_emp.cartographer dummy
scoreboard objectives add obl.cd.villager_emp.cleric dummy
scoreboard objectives add obl.cd.villager_emp.fletcher dummy
scoreboard objectives add obl.black_death.prologue.tick dummy
scoreboard objectives add obl.black_death.movement.cd dummy
scoreboard objectives add obl.black_death.teleport.cd dummy
scoreboard objectives add obl.black_death.teleport.time dummy
scoreboard objectives add obl.black_death.teleporting dummy
scoreboard objectives add obl.rotation.yaw dummy
scoreboard objectives add obl.rotation.pitch dummy
scoreboard objectives add obl.rotation.temp dummy
scoreboard objectives add obl.monocle.mode dummy
scoreboard objectives add obl.monocle.time dummy
scoreboard objectives add obl.monocle.cleanup dummy
scoreboard objectives add obl.empowering.viking_set dummy
scoreboard objectives add obl.empowering.cursed_armor dummy
scoreboard objectives add obl.motion.1 dummy
scoreboard objectives add obl.motion.2 dummy
scoreboard objectives add obl.motion.3 dummy
scoreboard objectives add obl.temp_tick dummy
scoreboard objectives add obl.player_life_tick dummy
scoreboard objectives add obl.player_quest_progress dummy
scoreboard objectives add obl.double_sneak.time dummy
scoreboard objectives add obl.armor_points.current dummy
scoreboard objectives add obl.armor_points.removedf dummy
scoreboard objectives add obl.hit_cooldown dummy
scoreboard objectives add obl.bleeding dummy
scoreboard objectives add obl.bleeding.interval dummy
scoreboard objectives add obl.bleeding.power dummy
scoreboard objectives add obl.projectile_damage dummy
scoreboard objectives add obl.ghost_ship.shooting_cd dummy
scoreboard objectives add obl.ghost_ship.shooting_delay dummy
scoreboard objectives add obl.ghost_ship.grenade_fuse dummy
scoreboard objectives add obl.ghost_ship.sorceress.teleport_cd dummy
scoreboard objectives add obl.projectile_damage dummy
scoreboard objectives add obl.item.count dummy
scoreboard objectives add obl.item.damage dummy
scoreboard objectives add obl.item.enchantment_level dummy
scoreboard objectives add obl.ballin dummy
scoreboard objectives add obl.bad_apple.frame dummy
scoreboard objectives add obl.bad_apple.startup dummy
scoreboard objectives add obl.bad_apple.part dummy
scoreboard objectives add obl.live_tick dummy
scoreboard objectives add obl.broken_armor dummy
scoreboard objectives add obl.parried_anvil.count dummy
scoreboard objectives add obl.parried_tnt.fuse dummy
scoreboard objectives add obl.parry.spam_cd dummy
scoreboard objectives add obl.parry.cd dummy
scoreboard objectives add obl.parry.projectile_count dummy
scoreboard objectives add obl.parry.direct_count dummy
scoreboard objectives add obl.parry.count dummy
scoreboard objectives add obl.parry.overall_count dummy
scoreboard objectives add obl.parry.tick dummy
scoreboard objectives add obl.parry.target_tick dummy
scoreboard objectives add obl.parry.empower_tick dummy
scoreboard objectives add obl.parry.after_tick dummy
scoreboard objectives add obl.multiplayer dummy
scoreboard objectives add obl.spawning_process dummy
scoreboard objectives add obl.mob.ability_cd dummy
scoreboard objectives add obl.crystodian.dashing dummy
scoreboard objectives add obl.id dummy
scoreboard objectives add obl.id.target dummy
scoreboard objectives add obl.id.reflect dummy
scoreboard objectives add obl.accessory_slot.1 dummy
scoreboard objectives add obl.accessory_slot.2 dummy
scoreboard objectives add obl.accessory_slot.3 dummy
scoreboard objectives add obl.cd.cursed_soul dummy
scoreboard objectives add obl.player_sneaking dummy
scoreboard objectives add obl.const dummy
scoreboard objectives add obl.boss_intro dummy
scoreboard objectives add obl.boss_time.start dummy
scoreboard objectives add obl.boss_time dummy
scoreboard objectives add obl.minute dummy
scoreboard objectives add obl.second dummy
scoreboard objectives add obl.minute.pb dummy
scoreboard objectives add obl.second.pb dummy
scoreboard objectives add obl.minute.sb dummy
scoreboard objectives add obl.second.sb dummy
scoreboard objectives add obl.minute.sb_nh dummy
scoreboard objectives add obl.second.sb_nh dummy
scoreboard objectives add obl.boss.cursed_armor.attempts_overall dummy
scoreboard objectives add obl.boss.cursed_armor.attempts dummy
scoreboard objectives add obl.boss.cursed_armor.best dummy
scoreboard objectives add obl.boss.cursed_armor.win_count dummy
scoreboard objectives add obl.boss.black_death.attempts_overall dummy
scoreboard objectives add obl.boss.black_death.attempts dummy
scoreboard objectives add obl.boss.black_death.best dummy
scoreboard objectives add obl.boss.black_death.win_count dummy
scoreboard players set 1200 obl.const 1200
scoreboard players set 20 obl.const 20
scoreboard players set 60 obl.const 60
execute unless score $server obl.boss.cursed_armor.best matches 1.. run scoreboard players set $server obl.boss.cursed_armor.best 67100
execute unless score $nohit obl.boss.cursed_armor.best matches 1.. run scoreboard players set $nohit obl.boss.cursed_armor.best 67100
execute as @a unless score @s obl.boss.cursed_armor.best matches 1.. run scoreboard players set @s obl.boss.cursed_armor.best 67100
execute unless score $server obl.boss.black_death.best matches 1.. run scoreboard players set $server obl.boss.black_death.best 67100
execute unless score $nohit obl.boss.black_death.best matches 1.. run scoreboard players set $nohit obl.boss.black_death.best 67100
execute as @a unless score @s obl.boss.black_death.best matches 1.. run scoreboard players set @s obl.boss.black_death.best 67100
scoreboard objectives add obl.music_sec dummy
scoreboard objectives add obl.beam_speed dummy
scoreboard objectives add obl.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add obl.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add obl.health dummy
scoreboard objectives add obl.real_health dummy
scoreboard objectives add obl.fake_health dummy
scoreboard objectives add obl.phase_transition dummy
scoreboard objectives add obl.event_mobs_near dummy
scoreboard objectives add obl.curse dummy
scoreboard objectives add obl.curse.sec dummy
scoreboard objectives add obl.rage dummy
scoreboard objectives add obl.stun dummy
scoreboard objectives add obl.player_air air
scoreboard objectives add obl.player_xp xp
scoreboard objectives add obl.player_health health
scoreboard objectives add obl.player_max_health dummy
scoreboard objectives add obl.materializing dummy
scoreboard objectives add obl.unusual.guardian_time dummy
scoreboard objectives add obl.unusual.id dummy
scoreboard objectives add obl.circling_unusual dummy
scoreboard objectives add obl.animal_age dummy
scoreboard objectives add obl.player_damaged custom:damage_taken
scoreboard objectives add obl.glowing_receiver.player_cd dummy
scoreboard objectives add obl.darkmobcount dummy
scoreboard objectives add obl.journal_delay dummy
scoreboard objectives add obl.enchantment_fading.announced dummy
scoreboard objectives add obl.allowed_enchantments dummy
scoreboard objectives add obl.weeping_angel.attack_cd dummy
scoreboard objectives add obl.weeping_angel.restoring_cd dummy
scoreboard objectives add obl.weeping_angel.breaking_process dummy
scoreboard objectives add obl.weeping_angel.broken_part dummy
scoreboard objectives add obl.weeping_angel.pose_cd dummy
scoreboard objectives add obl.weeping_angel.pose_cd dummy
scoreboard objectives add obl.bow_shot minecraft.used:minecraft.bow
scoreboard objectives add obl.bow_using dummy
scoreboard objectives add obl.bow_cleanup dummy
scoreboard objectives add obl.shield_using dummy
scoreboard objectives add obl.shield_cleanup dummy
scoreboard objectives add obl.shield_preparing dummy
scoreboard objectives add obl.projectle_progress dummy
scoreboard objectives add obl.spawner.live_tick dummy
scoreboard objectives add obl.dungeon_core.spawner_count dummy
scoreboard objectives add obl.dungeon_core.percentage dummy
scoreboard objectives add obl.dungeon_core.progress dummy
scoreboard objectives add obl.dungeon_core.constant dummy
scoreboard objectives add obl.isonfire dummy
scoreboard objectives add obl.shard_of_time.tick dummy
scoreboard objectives add obl.shard_of_time.cd dummy
scoreboard objectives add obl.shard_of_time.teleporting dummy
scoreboard objectives add obl.dolphins_pearl.charge dummy
scoreboard objectives add obl.alpha_dolphin.after_dash dummy
scoreboard objectives add obl.alpha_dolphin.pearl_count dummy
scoreboard objectives add obl.alpha_dolphin.dropped_pearl dummy
scoreboard objectives add obl.alpha_dolphin.hurt_time dummy
scoreboard objectives add obl.lavaexplorer dummy
scoreboard objectives add obl.mobambient dummy
scoreboard objectives add obl.mobambient.2 dummy
scoreboard objectives add obl.hurtcount dummy
scoreboard objectives add obl.cursereplace dummy
scoreboard objectives add obl.diffwither dummy
scoreboard objectives add obl.atlantis.used minecraft.used:minecraft.trident
scoreboard objectives add obl.disabled_slots.value dummy
scoreboard objectives add obl.collision.value dummy
scoreboard objectives add obl.glowing.value dummy
scoreboard objectives add obl.storm_bottle.tick dummy
scoreboard objectives add obl.armor_stand.pose dummy
scoreboard objectives add obl.armor_stand.sitting dummy
scoreboard objectives add obl.glowing.cd dummy
scoreboard objectives add obl.item_frame.cd dummy
scoreboard objectives add obl.leash_removal dummy
scoreboard objectives add obl.block_type dummy
scoreboard objectives add obl.block_facing dummy


scoreboard objectives add armorhealth dummy
scoreboard objectives add obl.difficulty dummy
scoreboard objectives add obl.porkchop dummy
scoreboard objectives add cursedarmor dummy

scoreboard objectives add obl.hungertimer dummy
scoreboard objectives add obl.hungercombo dummy
scoreboard objectives add obl.dashing dummy
scoreboard objectives add obl.death deathCount
scoreboard objectives add obl.death_boss.cd dummy

scoreboard objectives add obl.food food
scoreboard objectives add obl.altar.preparing dummy
scoreboard objectives add obl.altar.timer dummy
scoreboard objectives add obl.altar.ambient_speed dummy
scoreboard objectives add obl.altar.level dummy
scoreboard objectives add obl.altar.recipe_id dummy
scoreboard objectives add obl.altar.stability dummy
scoreboard objectives add obl.altar.enchanting dummy
scoreboard objectives add obl.altar.progress dummy
scoreboard objectives add obl.altar.ritual_level dummy
scoreboard objectives add obl.altar.timeout dummy
scoreboard objectives add obl.altar.ambient.1 dummy
scoreboard objectives add obl.altar.ambient.2 dummy
scoreboard objectives add obl.necrocount dummy
scoreboard objectives add obl.canstart dummy
scoreboard objectives add obl.creepercount dummy
scoreboard objectives add obl.firecount dummy
scoreboard objectives add playercount2 dummy
scoreboard objectives add obl.player_count dummy
scoreboard objectives add obl.grisaiacount dummy
scoreboard objectives add obl.voided dummy
scoreboard objectives add hungerhealth dummy
scoreboard objectives add pixiehealth dummy
scoreboard objectives add obl.amethysted dummy
scoreboard objectives add immuny dummy
scoreboard objectives add infection dummy
scoreboard objectives add infectedcount dummy
scoreboard objectives add infectedvill dummy
scoreboard objectives add detector.cd dummy
scoreboard objectives add detector.use dummy
scoreboard objectives add obl.time dummy
scoreboard objectives add obl.chatnot dummy
scoreboard objectives add obl.soundnot dummy
scoreboard objectives add minion dummy
scoreboard objectives add smell dummy
scoreboard objectives add pickupsorrow dummy
scoreboard objectives add champion1 dummy
scoreboard objectives add champion2 dummy
scoreboard objectives add championbeat dummy
scoreboard objectives add obl.sleeptimer dummy
scoreboard objectives add oblivion dummy
scoreboard objectives add abilities dummy
scoreboard objectives add blood dummy
scoreboard objectives add meteor.cooldown dummy
scoreboard objectives add meteor.used dummy
scoreboard objectives add barrier.used dummy
scoreboard objectives add barrier.cooldown dummy
scoreboard objectives add mothron.used dummy
scoreboard objectives add mothron.cooldown dummy
scoreboard objectives add obl.used.cursed_armor_sword dummy
scoreboard objectives add obl.cd.cursed_armor_sword dummy
scoreboard objectives add obl.process.cursed_armor_sword dummy
scoreboard objectives add demon.cooldown dummy
scoreboard objectives add demon.used dummy
scoreboard objectives add web.cooldown dummy
scoreboard objectives add web.used dummy
scoreboard objectives add torch.cd dummy
scoreboard objectives add torch.used dummy
scoreboard objectives add infinitytorch dummy
scoreboard objectives add grisaia dummy
scoreboard objectives add obl.rng dummy
scoreboard objectives add obl.rng.range dummy
scoreboard objectives add kpk dummy
scoreboard objectives add detector dummy
scoreboard objectives add cubeblade.cd1 dummy
scoreboard objectives add cubeblade.used1 dummy
scoreboard objectives add amethyst.cd1 dummy
scoreboard objectives add amethyst.used1 dummy
scoreboard objectives add cubeblade.used2 dummy
scoreboard objectives add cubeblade.cd2 dummy
scoreboard objectives add obl.lightning_buff dummy
scoreboard objectives add obl.cursed_bone.tick dummy
scoreboard objectives add obl.cursed_bone.amount dummy
scoreboard objectives add obl.cursed_bone.counting dummy
scoreboard objectives add obl.lightning_buff dummy
scoreboard objectives add obl.event_mobs_near dummy
scoreboard objectives add obl.death deathCount
scoreboard objectives add devilhealth dummy
scoreboard objectives add xmasmobs dummy
scoreboard objectives add bloodmobs dummy
scoreboard objectives add solarmobs dummy
scoreboard objectives add usedtotem dummy
scoreboard objectives add candycanecount dummy
scoreboard objectives add playercount dummy
scoreboard objectives add obl.devilcube dummy

scoreboard objectives add cs.fatigue dummy
scoreboard objectives add cs.slowness dummy
scoreboard objectives add cs.blindness dummy
scoreboard objectives add cs.weakness dummy
scoreboard objectives add cs.wither dummy
scoreboard objectives add cs.poison dummy
scoreboard objectives add cs.nausea dummy
scoreboard objectives add cs.hunger dummy

scoreboard objectives add oblivionmobskill dummy
scoreboard objectives add ampixiekill dummy
scoreboard objectives add hungerkill dummy
scoreboard objectives add pickstonekill dummy
scoreboard objectives add pickironkill dummy
scoreboard objectives add pickdiamkill dummy
scoreboard objectives add hoeironkill dummy
scoreboard objectives add hoegoldkill dummy
scoreboard objectives add hoediamkill dummy
scoreboard objectives add weakkill dummy
scoreboard objectives add poisonkill dummy
scoreboard objectives add blindkill dummy
scoreboard objectives add vikingkill dummy
scoreboard objectives add minerkill dummy
scoreboard objectives add guardkill dummy
scoreboard objectives add wispkill dummy
scoreboard objectives add pixiekill dummy
scoreboard objectives add desertkill dummy
scoreboard objectives add snowkill dummy
scoreboard objectives add starving_huskkill dummy
scoreboard objectives add ragekill dummy
scoreboard objectives add nuclearkill dummy
scoreboard objectives add gargantuakill dummy
scoreboard objectives add motherkill dummy
scoreboard objectives add witherbowkill dummy
scoreboard objectives add witheraxekill dummy
scoreboard objectives add witherhoekill dummy
scoreboard objectives add withersoulkill dummy
scoreboard objectives add bastionsoulkill dummy
scoreboard objectives add lastsoulkill dummy
scoreboard objectives add stormkill dummy
scoreboard objectives add mothronkill dummy
scoreboard objectives add solarmob1kill dummy
scoreboard objectives add solarmob2kill dummy
scoreboard objectives add solarmob3kill dummy
scoreboard objectives add solarmob4kill dummy
scoreboard objectives add solarmob5kill dummy
scoreboard objectives add devilkill dummy
scoreboard objectives add bloodmob1kill dummy
scoreboard objectives add bloodmob2kill dummy
scoreboard objectives add bloodmob3kill dummy
scoreboard objectives add bloodmob4kill dummy
scoreboard objectives add bloodmob5kill dummy
scoreboard objectives add bloodmob6kill dummy
scoreboard objectives add bloodmob7kill dummy
scoreboard objectives add bloodmob8kill dummy
scoreboard objectives add bloodmob9kill dummy
scoreboard objectives add grinchkill dummy
scoreboard objectives add xmasmob1kill dummy
scoreboard objectives add xmasmob2kill dummy
scoreboard objectives add xmasmob3kill dummy
scoreboard objectives add xmasmob4kill dummy
scoreboard objectives add xmasmob5kill dummy

scoreboard players set randomizer obl.rng.range 100


### Create teams
team add obl.no_collision
team modify obl.no_collision collisionRule never

team add creepers
team add zombies
team add skeletons
team add spiders
team add piglins
team add everyone
team add eventmob
team add ghostship
team modify ghostship collisionRule never