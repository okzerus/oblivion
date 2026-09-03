function oblivion:rng

execute if score randomizer obl.rng matches 1..59 run title @s times 0 15 15
execute if score randomizer obl.rng matches 1..59 run title @s title ""
execute if score randomizer obl.rng matches 1..59 run tag @s add obl.temp.saying_line
execute if score randomizer obl.rng matches 1..6 run playsound oblivion:misc.yamato.stereo.vergil.battle.1 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 1..6 run playsound oblivion:misc.yamato.mono.vergil.battle.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 1..6 run title @s subtitle {"text":"YOU'RE WASTING MY TIME...","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 7..15 run playsound oblivion:misc.yamato.stereo.vergil.battle.2 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 7..15 run playsound oblivion:misc.yamato.mono.vergil.battle.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 7..15 run title @s subtitle {"text":"TOO SLOW...","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 16..24 run playsound oblivion:misc.yamato.stereo.vergil.battle.3 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 16..24 run playsound oblivion:misc.yamato.mono.vergil.battle.3 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 16..24 run title @s subtitle {"text":"SHOW ME YOUR MOTIVATION!","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 25..33 run playsound oblivion:misc.yamato.stereo.vergil.battle.4 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 25..33 run playsound oblivion:misc.yamato.mono.vergil.battle.4 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 25..33 run title @s subtitle {"text":"NOW I'M A LITTLE MOTIVATED","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 34..42 run playsound oblivion:misc.yamato.stereo.vergil.battle.5 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 34..42 run playsound oblivion:misc.yamato.mono.vergil.battle.5 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 34..42 run title @s subtitle {"text":"THIS. IS. POWER.","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 43..50 run playsound oblivion:misc.yamato.stereo.vergil.battle.6 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 43..50 run playsound oblivion:misc.yamato.mono.vergil.battle.6 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 43..50 run title @s subtitle {"text":"A CLEAN CUT!","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 51..59 run playsound oblivion:misc.yamato.stereo.vergil.battle.7 hostile @s ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 51..59 run playsound oblivion:misc.yamato.mono.vergil.battle.7 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 51..59 run title @s subtitle {"text":"YOU'RE JUST GONNA STAND THERE?","italic":true,"color":"#388cbf"}
execute if score randomizer obl.rng matches 1..59 run tag @s remove obl.temp.saying_line

scoreboard players set @s obl.yamato.time.voice 13