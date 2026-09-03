tag @s add obl.murasama_offhand

function oblivion:abilities/reflectable_attack_announce
function oblivion:rng
effect give @s darkness 10 0 true
playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 0.6 0.7
playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 0.6 2
tag @s add obl.temp.saying_line
execute if score randomizer obl.rng matches 1..50 run playsound oblivion:misc.murasama.stereo.jetstream_sam.ability.1 hostile @s ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 1..50 run playsound oblivion:misc.murasama.mono.jetstream_sam.ability.1 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 1..50 run title @s title {"text":"LET'S DANCE!","italic":true,"color":"#D11212"}
execute if score randomizer obl.rng matches 51..100 run playsound oblivion:misc.murasama.stereo.jetstream_sam.ability.2 hostile @s ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 51..100 run playsound oblivion:misc.murasama.mono.jetstream_sam.ability.2 hostile @a[tag=!obl.temp.saying_line] ~ ~ ~ 2 1
execute if score randomizer obl.rng matches 51..100 run title @s title {"text":"SAY GOODNIGHT!","italic":true,"color":"#D11212"}
tag @s remove obl.temp.saying_line