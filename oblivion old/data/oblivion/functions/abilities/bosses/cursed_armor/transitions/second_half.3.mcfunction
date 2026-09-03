execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run tag @s add obl.cursed_armor.second_half
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run tag @s add obl.pentagram_show
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run tag @s remove obl.cursed_armor.first_half
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run particle minecraft:enchant ~ ~.5 ~ 0 0 0 2 100
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 3 1.2
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 3 1.2
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 3 1.2
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run particle minecraft:dust 0.3 1 0.3 1 ~ ~.5 ~ 1 1 1 0 30
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/second_half/story.1
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/second_half/repeat.1
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  ???  < 💀 >","color":"dark_green"}]
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  Проклятый Дух  < 💀 >","color":"dark_green"}]
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run bossbar set oblivion:boss_health color green
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=obl.facing_point] eyes
execute as @e[type=#oblivion:aoe,tag=obl.performing_dash] at @s run data merge entity @s {NoAI:1b}

schedule function oblivion:abilities/bosses/cursed_armor/transitions/second_half.4 60t