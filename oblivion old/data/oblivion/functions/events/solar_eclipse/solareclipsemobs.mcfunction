# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..35 run function oblivion:day/solarmobs/mob1
execute if score randomizer obl.rng matches 36..70 run function oblivion:day/solarmobs/mob2
execute if score randomizer obl.rng matches 71..85 run function oblivion:day/solarmobs/mob3
execute if score randomizer obl.rng matches 86..90 run function oblivion:day/solarmobs/mob4
execute if score randomizer obl.rng matches 91..95 run function oblivion:day/solarmobs/mob5
execute unless score mothronalive oblivion matches 1 if score randomizer obl.rng matches 96..100 run scoreboard players set mothronspawn oblivion 1

function oblivion:day/spreadsolarmobs