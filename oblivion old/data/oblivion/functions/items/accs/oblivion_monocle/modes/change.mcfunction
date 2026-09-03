scoreboard players add @s obl.monocle.mode 1
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 0.7 2

execute at @e[type=area_effect_cloud,tag=obl.temp.looking_raycast_end,limit=1,sort=nearest,distance=..5.3] if entity @e[type=painting,tag=obl.find_looking.result,limit=1,sort=nearest,distance=..5.3] if score @s obl.monocle.mode matches 3.. run scoreboard players set @s obl.monocle.mode 1
execute at @e[type=area_effect_cloud,tag=obl.temp.looking_raycast_end,limit=1,sort=nearest,distance=..5.3] if entity @e[type=#oblivion:item_frames,tag=obl.find_looking.result,limit=1,sort=nearest,distance=..5.3] if score @s obl.monocle.mode matches 5.. run scoreboard players set @s obl.monocle.mode 1
execute at @e[type=area_effect_cloud,tag=obl.temp.looking_raycast_end,limit=1,sort=nearest,distance=..5.3] if entity @e[type=armor_stand,tag=obl.find_looking.result,limit=1,sort=nearest,distance=..5.3] if score @s obl.monocle.mode matches 9.. run scoreboard players set @s obl.monocle.mode 1
execute at @e[type=area_effect_cloud,tag=obl.temp.looking_raycast_end,limit=1,sort=nearest,distance=..5.3] if entity @e[type=#oblivion:minecarts,tag=obl.find_looking.result,limit=1,sort=nearest,distance=..5.3] if score @s obl.monocle.mode matches 4.. run scoreboard players set @s obl.monocle.mode 1

scoreboard players set @s obl.monocle.time 10
