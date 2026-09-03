scoreboard players add @s obl.phase_transition 1

execute if score @s obl.phase_transition matches 1 run tag @s remove obl.performing_dash
execute if score @s obl.phase_transition matches 1 run kill @e[type=marker,tag=obl.beam_shooter.cursed]
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.3
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.4
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.5
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.3
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.4
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.2
execute if score @s obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.3
execute if score @s obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_disabled
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.stunned] run function oblivion:tech/stun_disabled
execute if score @s obl.phase_transition matches 1 if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/remove
execute if score @s obl.phase_transition matches 1 run kill @e[type=marker,tag=obl.cursed_shield]
execute if score @s obl.phase_transition matches 1 run scoreboard players set @s abilities 0
execute if score @s obl.phase_transition matches 1 align y run tp @s ^ ^ ^ ~ 40
execute if score @s obl.phase_transition matches 1 run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if score @s obl.phase_transition matches 1 run tag @s add obl.invulnerable
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 1 as @e[tag=obl.cursed_helmet] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_helmet
execute if score @s obl.phase_transition matches 1 as @e[tag=obl.cursed_chestplate] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_chestplate
execute if score @s obl.phase_transition matches 1 as @e[tag=obl.cursed_leggings] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_leggings
execute if score @s obl.phase_transition matches 1 as @e[tag=obl.cursed_boots] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_boots
execute if score @s obl.phase_transition matches 10 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/story.1
execute if score @s obl.phase_transition matches 10 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/repeat.1

execute if score @s obl.phase_transition matches 70 align y run tp @s ^ ^ ^ ~ 15
execute if score @s obl.phase_transition matches 70 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 3 0.1
execute if score @s obl.phase_transition matches 70 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 3 0.1
execute if score @s obl.phase_transition matches 70 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/story.2
execute if score @s obl.phase_transition matches 70 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/repeat.2

execute if score @s obl.phase_transition matches 100 run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 100 run particle minecraft:crit ~ ~1 ~ 0.3 0.9 0.3 0 100
execute if score @s obl.phase_transition matches 100 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/story.3
execute if score @s obl.phase_transition matches 100 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/repeat.3

execute if score @s obl.phase_transition matches 130 run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 130 run particle minecraft:crit ~ ~1 ~ 0.3 0.9 0.3 0 100
execute if score @s obl.phase_transition matches 130 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/story.4
execute if score @s obl.phase_transition matches 130 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/repeat.4

execute if score @s obl.phase_transition matches 150 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/story.5
execute if score @s obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_3/repeat.5
execute if score @s obl.phase_transition matches 150 run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 150 run particle minecraft:crit ~ ~1 ~ 0.3 0.9 0.3 0 100
execute if score @s obl.phase_transition matches 150 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 3 0.1
execute if score @s obl.phase_transition matches 150 run function oblivion:abilities/bosses/cursed_armor/armor_parts/spawn_helmet
execute if score @s obl.phase_transition matches 150 run function oblivion:abilities/bosses/cursed_armor/armor_parts/spawn_chestplate
execute if score @s obl.phase_transition matches 150 run function oblivion:abilities/bosses/cursed_armor/armor_parts/spawn_leggings
execute if score @s obl.phase_transition matches 150 run function oblivion:abilities/bosses/cursed_armor/armor_parts/spawn_boots
execute if score @s obl.phase_transition matches 150 run tp @e[tag=obl.cursed_armor.part] @s
execute if score @s obl.phase_transition matches 150 run data merge entity @s {NoAI:0b,Health:25,Attributes:[{Name:"generic.max_health",Base:25f}],HandDropChances:[0f,0f]}
execute if score @s obl.phase_transition matches 150 run summon minecraft:vex ~ ~-5 ~ {PersistenceRequired:1b,DeathLootTable:"oblivion:mobs/cursed_armor_soul",Invulnerable:1b,NoAI:1b,CustomName:'[{"text":"Проклятая душа","color":"green"}]',Health:1024,Silent:1b,Tags:["obl.boss","obl.invulnerable","obl.prevent_line","obl.mob","obl.ignore_reflects","obl.boss.cursed_armor","obl.phase.3","obl.cursed_armor.spirit","obl.dontreplace","obl.difficultychanged"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1024f}]}
execute if score @s obl.phase_transition matches 150 if entity @s[tag=obl.first_appearance] run tag @e[type=vex,tag=obl.cursed_armor.spirit] add obl.first_appearance
execute if score @s obl.phase_transition matches 150 run tag @s remove obl.phase.2
execute if score @s obl.phase_transition matches 150 run tag @s remove obl.boss.cursed_armor
execute if score @s obl.phase_transition matches 150 run tag @s remove obl.boss
execute if score @s obl.phase_transition matches 150 run tag @s add obl.cursed_armor.part
execute if score @s obl.phase_transition matches 150 run tag @s add obl.cursed_sword
execute if score @s obl.phase_transition matches 150 run tag @s add obl.phase.3
execute if score @s obl.phase_transition matches 150 run tag @s add obl.difficultychanged
execute if score @s obl.phase_transition matches 150 run scoreboard players set obl.disable_fake_bossbar oblivion 1
execute if score @s obl.phase_transition matches 150 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  ???  < 💀 >","color":"green"}]
execute if score @s obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  Проклятый Дух  < 💀 >","color":"green"}]
execute if score @s obl.phase_transition matches 150 run bossbar set oblivion:boss_health max 6
execute if score @s obl.phase_transition matches 150 run bossbar set oblivion:boss_health value 6
execute if score @s obl.phase_transition matches 150 run bossbar set oblivion:boss_health style notched_6
execute if score @s obl.phase_transition matches 150 run scoreboard players set obl.cursed_part.count oblivion 6