schedule function oblivion:on.5t 5t

###   O B L I V I O N   M O B S
execute as @e[type=#oblivion:difficulty_scaling,tag=!obl.difficultychanged] at @s run function oblivion:tech/difficulty/mobs/change

execute as @e[type=wither_skeleton,tag=obl.boss.cursed_armor,tag=obl.pentagram_show] at @s rotated ~ 0 run function oblivion:abilities/bosses/cursed_armor/transitions/pentagram

# Blood actionbar
execute as @a[scores={obl.murasama.blood=1..}] unless predicate oblivion:items/hold.murasama.both run title @s actionbar [{"text":"[","color":"#9C1111"},{"text":" Кровь: ","color":"#D11212"},{"score":{"name":"@s","objective":"obl.murasama.blood"},"color":"#D11212"},{"text":" ]","color":"#9C1111"}]
execute as @a[scores={obl.murasama.blood=1..}] unless predicate oblivion:items/hold.murasama.both run scoreboard players remove @s obl.murasama.blood 1
execute as @a[scores={obl.yamato.style=1..}] unless predicate oblivion:items/hold.yamato.both run title @s actionbar [{"text":"[","color":"#1c638e"},{"text":" Стиль: ","color":"#388cbf"},{"score":{"name":"@s","objective":"obl.yamato.style"},"color":"#388cbf"},{"text":" ]","color":"#1c638e"}]
execute as @a[scores={obl.yamato.style=1..}] unless predicate oblivion:items/hold.yamato.both run scoreboard players remove @s obl.yamato.style 1

###   M I S C
execute as @e[type=vex,tag=obl.wisp,tag=!obl.daytime] if score time oblivion matches 0..12500 run tag @s add obl.daytime
execute as @a[tag=obl.enchanted] at @s run function oblivion:tech/altars/rituals/player_enchantment/main

###   U N U S U A L
execute as @a at @s if entity @s[tag=obl.alive,predicate=oblivion:unusual,predicate=!oblivion:is.sneaking,gamemode=!spectator] run function oblivion:tech/unusual/main.5t
execute as @e[type=armor_stand,predicate=oblivion:unusual] at @s run function oblivion:tech/unusual/main.5t
execute as @e[type=marker,tag=obl.circling_unusual] at @s run function oblivion:tech/unusual/main.marker.5t