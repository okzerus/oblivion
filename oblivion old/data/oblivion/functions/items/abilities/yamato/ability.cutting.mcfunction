scoreboard players add @s obl.yamato.cutting.ability 1

execute if score @s obl.yamato.cutting.ability matches 1..17 run particle flash ~ ~ ~
execute if score @s obl.yamato.cutting.ability matches 1..17 run playsound minecraft:entity.shulker_bullet.hit hostile @a ~ ~ ~ 1 2

execute if score @s obl.yamato.cutting.ability matches 1 run effect give @e[type=#oblivion:aoe,distance=1..13] slowness 8 4 true
execute if score @s obl.yamato.cutting.ability matches 1 run effect give @e[type=#oblivion:aoe,distance=1..13] blindness 1 0 true
execute if score @s obl.yamato.cutting.ability matches 1 run effect give @s resistance 4 3 true
execute if score @s obl.yamato.cutting.ability matches 1 run attribute @s minecraft:generic.knockback_resistance base set 10
execute if score @s obl.yamato.cutting.ability matches 1 run summon marker ~ ~ ~ {Tags:["obl.yamato.center"]}
execute if score @s obl.yamato.cutting.ability matches 1 run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] @s

execute if score @s obl.yamato.cutting.ability matches 1 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 0 0 positioned ^5 ^1 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.1"]}
execute if score @s obl.yamato.cutting.ability matches 1 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ ~16 ~-7
execute if score @s obl.yamato.cutting.ability matches 1 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 1 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 1 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 1 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 1 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 1 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 2 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 0 0 positioned ^-5 ^3 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.2"]}
execute if score @s obl.yamato.cutting.ability matches 2 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -119 10
execute if score @s obl.yamato.cutting.ability matches 2 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 2 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 2 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 2 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 2 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 2 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 3 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 0 0 positioned ^5 ^7 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.3"]}
execute if score @s obl.yamato.cutting.ability matches 3 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ 140 17
execute if score @s obl.yamato.cutting.ability matches 3 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 3 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 3 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 3 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 3 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 3 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 4 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 0 0 positioned ^-5 ^4 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.4"]}
execute if score @s obl.yamato.cutting.ability matches 4 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -54 7
execute if score @s obl.yamato.cutting.ability matches 4 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 4 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 4 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 4 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 4 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 4 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 5 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 90 0 positioned ^5 ^3 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.5"]}
execute if score @s obl.yamato.cutting.ability matches 5 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ 136 4
execute if score @s obl.yamato.cutting.ability matches 5 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 5 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 5 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 5 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 5 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 5 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 6 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 90 0 positioned ^-5 ^8 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.6"]}
execute if score @s obl.yamato.cutting.ability matches 6 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -61 12
execute if score @s obl.yamato.cutting.ability matches 6 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 6 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 6 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 6 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 6 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 6 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 7 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 90 0 positioned ^-5 ^4 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.7"]}
execute if score @s obl.yamato.cutting.ability matches 7 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ 32 16
execute if score @s obl.yamato.cutting.ability matches 7 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 7 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 7 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 7 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 7 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 7 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 8 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 90 0 positioned ^5 ^2 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.8"]}
execute if score @s obl.yamato.cutting.ability matches 8 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -136 -8
execute if score @s obl.yamato.cutting.ability matches 8 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 8 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 8 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 8 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 8 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 8 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 9 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 180 0 positioned ^5 ^4 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.9"]}
execute if score @s obl.yamato.cutting.ability matches 9 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ 176 8
execute if score @s obl.yamato.cutting.ability matches 9 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 9 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 9 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 9 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 9 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 9 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 10 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 180 0 positioned ^-5 ^4 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.10"]}
execute if score @s obl.yamato.cutting.ability matches 10 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -18 17
execute if score @s obl.yamato.cutting.ability matches 10 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 10 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 10 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 10 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 10 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 10 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 11 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 180 0 positioned ^-5 ^4 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.11"]}
execute if score @s obl.yamato.cutting.ability matches 11 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -172 10
execute if score @s obl.yamato.cutting.ability matches 11 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 11 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 11 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 11 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 11 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 11 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 12 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 180 0 positioned ^5 ^4 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.12"]}
execute if score @s obl.yamato.cutting.ability matches 12 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -11 12
execute if score @s obl.yamato.cutting.ability matches 12 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 12 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 12 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 12 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 12 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 12 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 13 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 270 0 positioned ^5 ^4 ^-11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.13"]}
execute if score @s obl.yamato.cutting.ability matches 13 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ -96 13
execute if score @s obl.yamato.cutting.ability matches 13 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 13 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 13 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 13 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 13 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 13 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 14 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center] rotated 270 0 positioned ^-5 ^6 ^11 run summon marker ~ ~ ~ {Tags:["obl.yamato.cut","obl.yamato.cut.14"]}
execute if score @s obl.yamato.cutting.ability matches 14 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s rotated 0 0 run tp @s ~ ~ ~ 161 31
execute if score @s obl.yamato.cutting.ability matches 14 at @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] run summon marker ~ ~ ~ {Tags:["obl.yamato.teleporter"]}
execute if score @s obl.yamato.cutting.ability matches 14 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] at @s run tp @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] @s
execute if score @s obl.yamato.cutting.ability matches 14 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] at @s run tp ^ ^ ^5
execute if score @s obl.yamato.cutting.ability matches 14 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter] run tp @p[tag=obl.yamato.performing_ability] @s
execute if score @s obl.yamato.cutting.ability matches 14 as @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.cut,tag=!obl.temp.modified] anchored eyes positioned ^ ^ ^-2.5 run function oblivion:tech/raycast/yamato_ability.cut
execute if score @s obl.yamato.cutting.ability matches 14 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.teleporter]

execute if score @s obl.yamato.cutting.ability matches 1..15 run particle flash ~ ~ ~
execute if score @s obl.yamato.cutting.ability matches 1..15 run playsound minecraft:entity.shulker_bullet.hit hostile @a ~ ~ ~ 1 2
execute if score @s obl.yamato.cutting.ability matches 15 run tp @s @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center]
execute if score @s obl.yamato.cutting.ability matches 16 run kill @e[type=marker,limit=1,sort=nearest,tag=obl.yamato.center]
execute if score @s obl.yamato.cutting.ability matches 16.. run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.6 0.3 0.1 3 normal
execute if score @s obl.yamato.cutting.ability matches 18..29 run tp @s ~ ~ ~ ~ 55
execute if score @s obl.yamato.cutting.ability matches 30..50 run tp @s ~ ~ ~ ~ ~-2.75

execute if score @s obl.yamato.cutting.ability matches 20 run effect give @s darkness 10 0 true
execute if score @s obl.yamato.cutting.ability matches 20 run title @s times 0 26 10
execute if score @s obl.yamato.cutting.ability matches 20 run title @s title ""
execute if score @s obl.yamato.cutting.ability matches 20 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  3  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.cutting.ability matches 20 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9
execute if score @s obl.yamato.cutting.ability matches 30 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  2  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.cutting.ability matches 30 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score @s obl.yamato.cutting.ability matches 40 run title @s subtitle [{"text":"! >","color":"#9C1111"},{"text":"  1  ","color":"#D11212"},{"text":"< !","color":"#9C1111"}]
execute if score @s obl.yamato.cutting.ability matches 40 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.1
execute if score @s obl.yamato.cutting.ability matches 50 run title @s subtitle [{"text":"! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< !","color":"#1c638e"}]
execute if score @s obl.yamato.cutting.ability matches 50 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.cutting.ability matches 54 run title @s subtitle [{"text":"! ! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< ! !","color":"#1c638e"}]
execute if score @s obl.yamato.cutting.ability matches 54 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.cutting.ability matches 58 run title @s subtitle [{"text":"! ! ! >","color":"#1c638e"},{"text":"  СМЕНИТЕ СЛОТ  ","color":"#388cbf"},{"text":"< ! ! !","color":"#1c638e"}]
execute if score @s obl.yamato.cutting.ability matches 58 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.6 1.5
execute if score @s obl.yamato.cutting.ability matches 62 run title @s subtitle [{"text":"ПОЗДНО!","color":"#D11212"}]
execute if score @s obl.yamato.cutting.ability matches 62 run tellraw @s ["",{"text":"Я м ","italic":true,"color":"#1CC6BB"},{"text":"а т ","italic":true,"color":"#31C8AF"},{"text":"о   ","italic":true,"color":"#43CABB"},{"text":"о т ","italic":true,"color":"#4FCEC2"},{"text":"к а ","italic":true,"color":"#60D3CB"},{"text":"т ы ","italic":true,"color":"#79DFD9"},{"text":"в а ","italic":true,"color":"#8EE9E0"},{"text":"е т ","italic":true,"color":"#92E8E2"},{"text":"с я ","italic":true,"color":"#A1EDE1"},{"text":"!","italic":true,"color":"#AFF2EA"},{"text":"   (1:30)","italic":true,"color":"#C6F8F3"}]
execute if score @s obl.yamato.cutting.ability matches 62.. run function oblivion:items/abilities/yamato/ability.fail.2