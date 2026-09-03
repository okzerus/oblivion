scoreboard players add @s obl.glowing.value 1
tag @s remove obl.item_frame.glowing_range.1
tag @s remove obl.item_frame.glowing_range.2
tag @s remove obl.item_frame.glowing_range.3
tag @s add obl.item_frame.glowing_nbt
tag @s add obl.item_frame.glowing

execute if score @s obl.glowing.value matches 1 run data merge entity @s {Glowing:1b}
execute if score @s obl.glowing.value matches 1 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"+","color":"#16f141"},{"text":" {","color":"#23d033"},{"text":"Glowing:1b","color":"#16f141"},{"text":"}","color":"#23d033"}]',CustomNameVisible:1b}
execute if score @s obl.glowing.value matches 1 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Радиус: 7","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}
execute if score @s obl.glowing.value matches 1 run tag @s add obl.item_frame.glowing_range.1
execute if score @s obl.glowing.value matches 2 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Радиус: 15","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}
execute if score @s obl.glowing.value matches 2 run tag @s add obl.item_frame.glowing_range.2
execute if score @s obl.glowing.value matches 3 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Радиус: 25","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}
execute if score @s obl.glowing.value matches 3 run tag @s add obl.item_frame.glowing_range.3
execute if score @s obl.glowing.value matches 4 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"-","color":"#e90f12"},{"text":" {","color":"#a81627"},{"text":"Glowing:1b","color":"#e90f12"},{"text":"}","color":"#a81627"}]',CustomNameVisible:1b}
execute if score @s obl.glowing.value matches 4 run tag @s remove obl.item_frame.glowing_nbt
execute if score @s obl.glowing.value matches 4 run tag @s remove obl.item_frame.glowing
execute if score @s obl.glowing.value matches 4 run data merge entity @s {Glowing:0b}
execute if score @s obl.glowing.value matches 4.. run scoreboard players set @s obl.glowing.value 0