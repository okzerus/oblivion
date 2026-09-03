tag @s remove obl.performing_dash
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.2
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.3
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.4
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.5
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.2
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.3
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.4
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.2
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.3
tag @s add obl.performing_dash
tag @s add obl.disable_abilities
tag @s remove obl.armorshield
scoreboard players set @s abilities 0
kill @e[type=marker,tag=obl.cursed_shield]
kill @e[type=marker,tag=obl.instant_beam]

execute anchored eyes run tag @p add obl.facing_point
execute anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=obl.facing_point] eyes
particle block dirt ~ ~.3 ~ 0.7 0 0.7 0 30
data merge entity @s {NoAI:0b,Invulnerable:1b}
tag @s add obl.invulnerable
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 3 1.8
playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 3 1.3
execute anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~ 0 positioned ~ ~1.6 ~ summon marker run function oblivion:abilities/mobs/dash.as_marker
data modify entity @s Motion set from storage oblivion:temp vector
execute as @e[tag=obl.cursed_helmet] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_helmet
execute as @e[tag=obl.cursed_chestplate] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_chestplate
execute as @e[tag=obl.cursed_leggings] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_leggings
execute as @e[tag=obl.cursed_boots] at @s run function oblivion:abilities/bosses/cursed_armor/armor_parts/return_boots

schedule function oblivion:abilities/bosses/cursed_armor/transitions/second_half.2 10t