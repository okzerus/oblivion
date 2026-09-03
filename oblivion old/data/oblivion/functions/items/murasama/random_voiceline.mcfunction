function oblivion:rng

execute if score randomizer obl.rng matches 1..50 run title @s times 0 15 15
execute if score randomizer obl.rng matches 1..50 run title @s title ""
execute if score randomizer obl.rng matches 1..50 run tag @s add obl.temp.saying_line
execute if score randomizer obl.rng matches 1..6 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.1 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 1..6 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 1..6 run title @s subtitle {"text":"THAT ALL YOU'VE GOT?","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 7..15 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.2 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 7..15 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 7..15 run title @s subtitle {"text":"HA! DISAPPOITING.","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 16..24 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.3 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 16..24 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.3 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 16..24 run title @s subtitle {"text":"TRY HARDER!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 25..33 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.4 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 25..33 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.4 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 25..33 run title @s subtitle {"text":"I EXPECTED MORE!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 34..42 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.5 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 34..42 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.5 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 34..42 run title @s subtitle {"text":"ALL BARK AND NO BITE?","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 43..50 run playsound oblivion:misc.murasama.stereo.jetstream_sam.battle.6 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 43..50 run playsound oblivion:misc.murasama.mono.jetstream_sam.battle.6 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 43..50 run title @s subtitle {"text":"AMATEUR!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 1..50 run tag @s remove obl.temp.saying_line

scoreboard players set @s obl.murasama.time.voice 13