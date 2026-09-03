scoreboard players add @s obl.yamato.style 10
tag @s add obl.temp.owner
execute anchored eyes positioned ^ ^ ^4 as @e[type=#oblivion:enrageable,distance=..4.5,tag=!obl.enraged,tag=!obl.temp.owner,sort=nearest,limit=3] run tag @s add obl.temp.to_be_enraged
execute as @e[type=#oblivion:enrageable,tag=obl.temp.to_be_enraged] at @s run function oblivion:tech/mob_rage_enabled
execute as @e[type=#oblivion:enrageable,tag=obl.temp.to_be_enraged] run tag @s add obl.custom_rage
execute as @e[type=#oblivion:enrageable,tag=obl.temp.to_be_enraged] run scoreboard players set @s obl.rage 300
tag @s remove obl.temp.owner
tag @e[type=#oblivion:enrageable,tag=obl.temp.to_be_enraged] remove obl.temp.to_be_enraged

function oblivion:rng
tag @s add obl.temp.saying_line
title @s times 0 26 10
title @s title ""
execute if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.yamato.stereo.vergil.taunt.1 hostile @s ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.yamato.mono.vergil.taunt.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 1..33 run title @s subtitle {"text":"TRY ME..","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.yamato.stereo.vergil.taunt.2 hostile @s ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.yamato.mono.vergil.taunt.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 34..66 run title @s subtitle {"text":"PATHETIC..","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.yamato.stereo.vergil.taunt.3 hostile @s ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.yamato.mono.vergil.taunt.3 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1.3 1
execute if score randomizer obl.rng matches 67..100 run title @s subtitle {"text":"KNEEL BEFORE ME!","italic":true,"color":"#388cbf"}
tag @s remove obl.temp.saying_line

scoreboard players set @s obl.yamato.time.taunt 600