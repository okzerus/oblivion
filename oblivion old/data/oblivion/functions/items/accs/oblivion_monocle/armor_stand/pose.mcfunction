scoreboard players add @s obl.armor_stand.pose 1
data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if score @s obl.armor_stand.pose matches 1 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Стандарт","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 2 run data merge entity @s {Pose:{Head:[47f,0f,0f],LeftLeg:[355f,0f,358f],RightLeg:[6f,0f,2f],LeftArm:[283f,29f,22f],RightArm:[275f,330f,351f]}}
execute if score @s obl.armor_stand.pose matches 2 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Скорбь","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 3 run data merge entity @s {Pose:{Head:[14f,0f,0f],LeftLeg:[29f,7f,0f],RightLeg:[338f,4f,2f],LeftArm:[318f,0f,351f],RightArm:[230f,17f,353f]}}
execute if score @s obl.armor_stand.pose matches 3 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Нападение","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 4 run data merge entity @s {Pose:{Body:[4f,0f,0f],Head:[34f,0f,0f],LeftLeg:[24f,4f,358f],RightLeg:[328f,4f,2f],LeftArm:[79f,7f,338f],RightArm:[82f,350f,14f]}}
execute if score @s obl.armor_stand.pose matches 4 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Ускорение","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 5 run data merge entity @s {Pose:{Head:[23f,0f,0f],LeftLeg:[357f,0f,357f],RightLeg:[2f,0f,3f],LeftArm:[9f,0f,355f],RightArm:[288f,331f,19f]}}
execute if score @s obl.armor_stand.pose matches 5 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Обжорство","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 6 run data merge entity @s {Pose:{Head:[328f,0f,0f],LeftLeg:[32f,14f,0f],RightLeg:[49f,350f,0f],LeftArm:[72f,44f,0f],RightArm:[32f,333f,34f]}}
execute if score @s obl.armor_stand.pose matches 6 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Улёт","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 7 run data merge entity @s {Pose:{Body:[4f,0f,0f],Head:[16f,0f,0f],LeftLeg:[27f,26f,0f],RightLeg:[27f,335f,0f],LeftArm:[210f,331f,0f],RightArm:[212f,33f,0f]}}
execute if score @s obl.armor_stand.pose matches 7 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Наскок","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 8 run data merge entity @s {Pose:{Body:[0f,7f,0f],Head:[1f,49f,0f],LeftLeg:[6f,4f,0f],RightLeg:[355f,14f,0f],LeftArm:[270f,62f,0f],RightArm:[267f,42f,0f]}}
execute if score @s obl.armor_stand.pose matches 8 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Стрелец","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 9 run data merge entity @s {Pose:{Head:[24f,9f,7f],LeftArm:[210f,0f,358f],RightArm:[305f,348f,17f]}}
execute if score @s obl.armor_stand.pose matches 9 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Осмотр","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 10 run data merge entity @s {Pose:{Head:[21f,330f,0f],LeftLeg:[9f,0f,0f],RightLeg:[353f,0f,0f],LeftArm:[255f,32f,9f],RightArm:[247f,44f,360f]}}
execute if score @s obl.armor_stand.pose matches 10 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Дэб","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 11 run data merge entity @s {Pose:{Body:[360f,0f,0f],Head:[304f,0f,0f],LeftLeg:[39f,360f,343f],RightLeg:[334f,0f,7f],LeftArm:[143f,32f,4f],RightArm:[210f,42f,0f]}}
execute if score @s obl.armor_stand.pose matches 11 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Воля","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 12 run data merge entity @s {Pose:{Head:[56f,0f,0f],LeftLeg:[345f,0f,0f],RightLeg:[22f,0f,0f],LeftArm:[52f,320f,0f],RightArm:[52f,38f,0f]}}
execute if score @s obl.armor_stand.pose matches 12 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Мышление","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 13 run data merge entity @s {Pose:{Body:[5f,0f,0f],Head:[62f,0f,0f],LeftLeg:[26f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[345f,0f,0f],RightArm:[345f,0f,0f]}}
execute if score @s obl.armor_stand.pose matches 13 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Уныние","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 14 run data merge entity @s {Pose:{LeftLeg:[9f,0f,0f],Head:[0f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[257f,32f,4f],RightArm:[257f,330f,0f]}}
execute if score @s obl.armor_stand.pose matches 14 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Аплодирование","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 15 run data merge entity @s {Pose:{Body:[2f,0f,0f],Head:[9f,317f,0f],RightLeg:[0f,15f,11f],LeftArm:[281f,22f,81f],RightArm:[274f,8f,0f]}}
execute if score @s obl.armor_stand.pose matches 15 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Дар","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 16 run data merge entity @s {Pose:{Head:[348f,0f,0f],LeftLeg:[12f,0f,0f],LeftArm:[234f,0f,14f],RightArm:[237f,0f,0f]}}
execute if score @s obl.armor_stand.pose matches 16 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Восход","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 17 run data merge entity @s {Pose:{Head:[338f,300f,0f],LeftArm:[0f,0f,256f],RightLeg:[0f,0f,11f],LeftLeg:[0f,0f,347f],RightArm:[0f,0f,61f],Body:[0f,0f,357f]}}
execute if score @s obl.armor_stand.pose matches 17 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Внимание","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 18 run data merge entity @s {Pose:{Body:[357f,0f,0f],Head:[352f,47f,5f],LeftLeg:[7f,17f,357f],RightLeg:[2f,13f,7f],LeftArm:[13f,45f,0f],RightArm:[267f,47f,0f]}}
execute if score @s obl.armor_stand.pose matches 18 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Вызов","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 19 run data merge entity @s {Pose:{Head:[18f,337f,0f],LeftLeg:[9f,24f,0f],RightLeg:[359f,29f,0f],LeftArm:[20f,29f,0f],RightArm:[242f,337f,0f]}}
execute if score @s obl.armor_stand.pose matches 19 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Вспышка","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 20 run data merge entity @s {Pose:{LeftLeg:[348f,0f,0f],RightLeg:[12f,0f,0f],LeftArm:[328f,5f,38f],RightArm:[321f,0f,323f]}}
execute if score @s obl.armor_stand.pose matches 20 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Хват","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 21 run data merge entity @s {Pose:{Head:[22f,0f,0f],LeftLeg:[334f,0f,0f],RightLeg:[19f,0f,7f],LeftArm:[267f,0f,34f],RightArm:[267f,0f,41f]}}
execute if score @s obl.armor_stand.pose matches 21 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Толчок","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 22 run data merge entity @s {Pose:{Head:[352f,0f,5f],LeftLeg:[9f,331f,0f],RightLeg:[352f,29f,0f],LeftArm:[357f,22f,330f],RightArm:[338f,67f,9f]}}
execute if score @s obl.armor_stand.pose matches 22 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Доминирование","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 23 run data merge entity @s {Pose:{LeftLeg:[12f,0f,360f],RightLeg:[348f,0f,0f],LeftArm:[318f,22f,4f],RightArm:[321f,327f,0f]}}
execute if score @s obl.armor_stand.pose matches 23 facing entity @p[tag=obl.equipped.accs.oblivion_monocle] eyes positioned ^ ^ ^.3 run summon armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"(","color":"#d0af2b"},{"text":"Поза: Носитель","color":"#f5d75e"},{"text":")","color":"#d0af2b"}]',CustomNameVisible:1b}

execute if score @s obl.armor_stand.pose matches 23.. run scoreboard players set @s obl.armor_stand.pose 0