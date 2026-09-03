# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..8 run particle block black_concrete ~ ~.5 ~ 0.3 0.6 0.3 0 200 force
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run tag @s add voided