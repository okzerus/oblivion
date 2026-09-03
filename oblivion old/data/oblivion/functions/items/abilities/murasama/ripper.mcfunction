tag @s add obl.empowered.murasama

scoreboard players add @s obl.stackable.speed 150
scoreboard players add @s obl.stackable.jump_boost 100
scoreboard players add @s obl.stackable.strength 300
scoreboard players add @s obl.stackable.haste 100
scoreboard players add @s obl.stackable.resistance 150

scoreboard players remove @s obl.murasama.blood 75


function oblivion:rng
title @s times 0 15 15
title @s title ""
tag @s add obl.temp.saying_line
execute if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.murasama.stereo.jetstream_sam.ripper.1 hostile @s ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 1..33 run playsound oblivion:misc.murasama.mono.jetstream_sam.ripper.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 1..33 run title @s subtitle {"text":"JUST GETTING STARTED!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.murasama.stereo.jetstream_sam.ripper.2 hostile @s ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 34..66 run playsound oblivion:misc.murasama.mono.jetstream_sam.ripper.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 34..66 run title @s subtitle {"text":"MORE, HURT ME MORE!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.murasama.stereo.jetstream_sam.ripper.3 hostile @s ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 67..100 run playsound oblivion:misc.murasama.mono.jetstream_sam.ripper.3 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 67..100 run title @s subtitle {"text":"AND HERE'S THE PUNCHLINE!","italic":true,"color":"#D11212"}
tag @s remove obl.temp.saying_line

playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 1.6
particle flame ~ ~0.5 ~ 0 0.6 0 0.5 50 normal
particle angry_villager ~ ~2.3 ~ 0.5 0.3 0.5 0 30 normal

effect clear @s darkness