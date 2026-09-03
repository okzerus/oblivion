scoreboard players add @s obl.phase_transition 1
execute if entity @s[tag=!obl.phase.transition] anchored eyes run particle block redstone_block ^ ^-.2 ^.45 0.05 0.05 0.05 0 2 force

execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run tag @s remove obl.performing_dash
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run kill @e[type=marker,tag=obl.beam_shooter.cursed]
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.2
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.3
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.4
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.5
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.2
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.3
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.4
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.2
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.3
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_disabled
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 if entity @s[tag=obl.stunned] run function oblivion:tech/stun_disabled
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/remove
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run tag @s add obl.disable_abilities
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run kill @e[type=marker,tag=obl.cursed_shield]
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run scoreboard players set obl.disable_fake_bossbar oblivion 1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run scoreboard players set @s abilities 0
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 align y run tp @s ^ ^ ^ ~ 40
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run tag @s add obl.invulnerable
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 1 run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 0.1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 10 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/story.1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 10 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/repeat.1
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 70 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/story.2
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 70 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/repeat.2
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run summon minecraft:wither_skeleton ~ ~ ~ {PersisteneRequired:1b,DeathLootTable:"oblivion:mobs/cursed_armor_sword",Invulnerable:1b,NoAI:1b,CustomName:'[{"text":"Проклятые доспехи","color":"dark_gray"}]',Health:1024,Silent:1b,Tags:["obl.mob","obl.invulnerable","obl.disable_abilities","obl.can_be_enraged","obl.cursed_armor.first_half","obl.boss","obl.boss.cursed_armor","obl.dontreplace","obl.phase.1","obl.phase.transition"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b}],HandItems:[{id:netherite_sword,tag:{CustomModelData:7171,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Name:"generic.attack_damage",UUID:[I;-123722,19341,9841,-38682]}]},Count:1}],ArmorItems:[{id:netherite_boots,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_leggings,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_chestplate,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1},{id:netherite_helmet,tag:{CustomModelData:7172,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-123722,19341,9841,-38682]}]},Count:1}],Attributes:[{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.armor",Base:6f},{Name:"generic.knockback_resistance",Base:0.1f},{Name:"generic.attack_damage",Base:7f},{Name:"generic.max_health",Base:1024f}]}
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 if entity @s[tag=obl.first_appearance] run tag @e[type=wither_skeleton,tag=obl.cursed_armor.first_half] add obl.first_appearance
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run tp @e[tag=obl.phase.transition] @s
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run scoreboard players set @e[tag=obl.phase.transition,limit=1] obl.fake_health 0
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 3 0.8
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run particle minecraft:poof ~ ~1 ~ 0.3 0.9 0.3 0 100
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run tp @s ~ -256 ~
execute if score @s[tag=!obl.phase.transition] obl.phase_transition matches 90 run kill @s

execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 60..150 run particle minecraft:enchant ~ ~1 ~ 0.3 0.9 0.3 0 5
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 60 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/story.3
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 60 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/repeat.3
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/story.4
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/repeat.4
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120..150 run particle dust 0 1 0 0.6 ~ ~2.1 ~ 0 0 0 0.01 1 force
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.1
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 0.1
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 120 align y run tp @s ^ ^ ^ ~ 15

execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/story.5
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_2/repeat.5
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run effect give @a[tag=obl.in_battle.cursed_armor] blindness 1 0 true
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 1 0.1	
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.1
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run scoreboard players set @s obl.fake_health 300
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 store result bossbar oblivion:boss_health value run scoreboard players get @s obl.fake_health
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run tag @s remove obl.disable_abilities
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run tag @s add obl.phase.2
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run tag @s remove obl.phase.1
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run scoreboard players set obl.disable_fake_bossbar oblivion 0
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run data merge entity @s {Invulnerable:0b,NoAI:0b}
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run tag @s remove obl.invulnerable
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  ???  < 💀 >","color":"green"}]
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  Проклятый Дух  < 💀 >","color":"green"}]
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run tag @s add obl.boss_intro
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run tag @s add obl.intro.cursed_soul
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run bossbar set oblivion:boss_health color green
execute if score @s[tag=obl.phase.transition] obl.phase_transition matches 150 run tag @s remove obl.phase.transition
execute if score @s obl.phase_transition matches 150 run scoreboard players set @s obl.phase_transition 0