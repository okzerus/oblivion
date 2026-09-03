# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..15 run particle flame ~ ~4 ~ 0 3 0 0 100 force
execute if score randomizer obl.rng matches 1..15 run effect give @s instant_damage 1 0 true
execute if score randomizer obl.rng matches 1..15 run setblock ~ ~ ~ fire
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 3 0.1