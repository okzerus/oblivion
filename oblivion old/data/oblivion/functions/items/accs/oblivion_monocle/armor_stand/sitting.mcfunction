scoreboard players add @s obl.armor_stand.sitting 1
execute if score @s obl.armor_stand.sitting matches 1 run data merge entity @s {Pose:{LeftLeg:[281f,337f,0f],RightLeg:[281f,24f,0f]}}
execute if score @s obl.armor_stand.sitting matches 1 run tp @s ~ ~-.5 ~
execute if score @s obl.armor_stand.sitting matches 1 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"+","color":"#16f141"},{"text":" (","color":"#23d033"},{"text":"Сидение","color":"#16f141"},{"text":")","color":"#23d033"}]',CustomNameVisible:1b}
execute if score @s obl.armor_stand.sitting matches 2 run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if score @s obl.armor_stand.sitting matches 2 run tp @s ~ ~.5 ~
execute if score @s obl.armor_stand.sitting matches 2 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"-","color":"#e90f12"},{"text":" (","color":"#a81627"},{"text":"Сидение","color":"#e90f12"},{"text":")","color":"#a81627"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.sitting matches 2.. run scoreboard players set @s obl.armor_stand.sitting 0