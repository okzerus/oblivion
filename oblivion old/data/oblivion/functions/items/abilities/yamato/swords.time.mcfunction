scoreboard players add @s obl.yamato.time.swords 1
execute if score @s obl.yamato.time.swords matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.6 2
execute if score @s obl.yamato.time.swords matches 1 run function oblivion:rng
execute if score @s obl.yamato.time.swords matches 1 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 0.6 0.7
execute if score @s obl.yamato.time.swords matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 0.6 2
execute if score @s obl.yamato.time.swords matches 1 run scoreboard players set @s obl.yamato.time.voice 5
execute if score @s obl.yamato.time.swords matches 1 run scoreboard players remove @s obl.yamato.style 20
execute if score @s obl.yamato.time.swords matches 1 run title @s times 0 15 15
execute if score @s obl.yamato.time.swords matches 1 run title @s title ""
execute if score @s obl.yamato.time.swords matches 1 run tag @s add obl.temp.saying_line
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.yamato.stereo.vergil.swords.1 hostile @s ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.yamato.mono.vergil.swords.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 1..33 run title @s subtitle {"text":"DON'T GET COCKY.","italic":true,"color":"#388cbf"}
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.yamato.stereo.vergil.swords.2 hostile @s ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.yamato.mono.vergil.swords.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 34..66 run title @s subtitle {"text":"STAY WHERE YOU ARE!","italic":true,"color":"#388cbf"}
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.yamato.stereo.vergil.swords.3 hostile @s ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.yamato.mono.vergil.swords.3 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score @s obl.yamato.time.swords matches 1 if score randomizer obl.rng matches 67..100 run title @s subtitle {"text":"STAY BACK, CHILD.","italic":true,"color":"#388cbf"}
execute if score @s obl.yamato.time.swords matches 1 run tag @s remove obl.temp.saying_line

execute if score @s obl.yamato.time.swords matches 1..20 anchored eyes positioned ^1 ^ ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles
execute if score @s obl.yamato.time.swords matches 1..40 anchored eyes positioned ^1 ^-.4 ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles
execute if score @s obl.yamato.time.swords matches 1..60 anchored eyes positioned ^1 ^-.8 ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles
execute if score @s obl.yamato.time.swords matches 1..80 anchored eyes positioned ^-1 ^ ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles
execute if score @s obl.yamato.time.swords matches 1..100 anchored eyes positioned ^-1 ^-.4 ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles
execute if score @s obl.yamato.time.swords matches 1..120 anchored eyes positioned ^-1 ^-.8 ^0.7 run function oblivion:items/abilities/yamato/swords.fake_particles

execute if score @s obl.yamato.time.swords matches 20 anchored feet positioned ^1 ^ ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if score @s obl.yamato.time.swords matches 40 anchored feet positioned ^1 ^-.4 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if score @s obl.yamato.time.swords matches 60 anchored feet positioned ^1 ^-.8 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if score @s obl.yamato.time.swords matches 80 anchored feet positioned ^-1 ^ ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if score @s obl.yamato.time.swords matches 100 anchored feet positioned ^-1 ^-.4 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if score @s obl.yamato.time.swords matches 120 anchored feet positioned ^-1 ^-.8 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword