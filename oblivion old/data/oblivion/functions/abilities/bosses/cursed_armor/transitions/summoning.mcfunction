scoreboard players add @s obl.phase_transition 1
execute if score @s obl.phase_transition matches 1 as @e[type=item,limit=1,sort=nearest] run data merge entity @s {PickupDelay:32767s,Age:-32767s}

execute if score @s obl.phase_transition matches 1.. run particle enchant ~ ~.1 ~ 2 0.03 2 0 30 force
execute if score @s obl.phase_transition matches 29.. as @e[type=wither_skeleton,tag=obl.fake.cursed_armor] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p eyes

execute if score @s obl.phase_transition matches 1 unless entity @a[distance=..50,tag=obl.beaten.cursed_armor] run tag @s add obl.first_appearance

execute if score @s obl.phase_transition matches 1 run tag @a remove obl.preload_music
execute if score @s obl.phase_transition matches 1 as @a[distance=..50] at @s run tag @s add obl.preload_music
execute if score @s obl.phase_transition matches 1 run playsound oblivion:bosses.cursed_armor voice @a[distance=..50] ~ ~ ~ 1 1 0.1
execute if score @s obl.phase_transition matches 1 run schedule function oblivion:music/preload.stop 3t
execute if score @s obl.phase_transition matches 2 run playsound oblivion:bosses.cursed_armor voice @a[distance=..50] ~ ~ ~ 1 1 0.1
execute if score @s obl.phase_transition matches 2 run schedule function oblivion:music/preload.stop 3t
execute if score @s obl.phase_transition matches 3 run playsound oblivion:bosses.cursed_armor voice @a[distance=..50] ~ ~ ~ 1 1 0.1
execute if score @s obl.phase_transition matches 3 run schedule function oblivion:music/preload.stop 3t
execute if score @s obl.phase_transition matches 4 run playsound oblivion:bosses.cursed_armor voice @a[distance=..50] ~ ~ ~ 1 1 0.1
execute if score @s obl.phase_transition matches 4 run schedule function oblivion:music/preload.stop 3t
execute if score @s obl.phase_transition matches 5 run playsound oblivion:bosses.cursed_armor voice @a[distance=..50] ~ ~ ~ 1 1 0.1
execute if score @s obl.phase_transition matches 5 run schedule function oblivion:music/preload.stop 3t
execute if score @s obl.phase_transition matches 8 run tag @a remove obl.preload_music

execute if score @s obl.phase_transition matches 5 at @s run particle block dirt ~ ~.3 ~ 0.1 0 0.1 0 30
execute if score @s obl.phase_transition matches 5 at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 9 at @s run particle block dirt ~ ~.3 ~ 0.1 0 0.1 0 30
execute if score @s obl.phase_transition matches 9 at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 13 at @s run particle block dirt ~ ~.3 ~ 0.1 0 0.1 0 30
execute if score @s obl.phase_transition matches 13 at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 17 at @s run particle block dirt ~ ~.3 ~ 0.2 0 0.2 0 80
execute if score @s obl.phase_transition matches 17 at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 17 at @s run summon wither_skeleton ~ ~-3 ~ {Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["obl.dont_replace","obl.invulnerable","obl.boss","obl.fake.cursed_armor","obl.difficultychanged","obl.checked","obl.checked2"],HandItems:[{id:netherite_sword,tag:{CustomModelData:7171},Count:1}],ArmorItems:[{id:netherite_boots,tag:{CustomModelData:7172},Count:1},{id:netherite_leggings,tag:{CustomModelData:7172},Count:1},{id:netherite_chestplate,tag:{CustomModelData:7172},Count:1},{id:netherite_helmet,tag:{CustomModelData:7172},Count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s obl.phase_transition matches 17 as @e[type=wither_skeleton,tag=obl.fake.cursed_armor] at @s run tp @s ~ ~1.3 ~
execute if score @s obl.phase_transition matches 18 as @e[type=wither_skeleton,tag=obl.fake.cursed_armor] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 21 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.1
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 21 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.1
execute if score @s obl.phase_transition matches 24 at @s run particle block dirt ~ ~.3 ~ 0.1 0 0.1 0 30
execute if score @s obl.phase_transition matches 24 at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 24 as @e[type=wither_skeleton,tag=obl.fake.cursed_armor] at @s run tp @s ~ ~.7 ~ ~ ~40
execute if score @s obl.phase_transition matches 26 at @s run particle block dirt ~ ~.3 ~ 0.1 0 0.1 0 30
execute if score @s obl.phase_transition matches 26 at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0.1
execute if score @s obl.phase_transition matches 26 as @e[type=wither_skeleton,tag=obl.fake.cursed_armor] at @s run tp @s ~ ~1 ~ ~ 65

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 38 as @a[distance=..20] run function oblivion:music/playing/start/cursed_armor
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 17 as @a[distance=..20] run function oblivion:music/playing/start/cursed_armor

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 30 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.2
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 35 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.3
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 40 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.4
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 45 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.5
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 50 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.6
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 55 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.7
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 60 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.8
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 65 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.9
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 70 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/story.10
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 71 as @a[distance=..20] run tag @s add obl.intro.cursed_armor
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 71 as @a[distance=..20] run tag @s add obl.boss_intro
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 72 run function oblivion:abilities/bosses/cursed_armor/spawn

execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 30 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.2
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 34 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.3
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 38 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.4
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 43 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.5
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 48 as @a[distance=..20] run function oblivion:lines/bosses/cursed_armor/spawning/repeat.6
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 50 as @a[distance=..20] run tag @s add obl.intro.cursed_armor
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 50 as @a[distance=..20] run tag @s add obl.boss_intro
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 51 run function oblivion:abilities/bosses/cursed_armor/spawn