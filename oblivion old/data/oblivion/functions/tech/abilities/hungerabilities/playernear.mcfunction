# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..15 run particle item rotten_flesh{CustomModelData:30000} ~ ~1 ~ 0.3 0.6 0.3 0 100 force
execute if score randomizer obl.rng matches 1..15 run effect give @s instant_damage 1 0 true
execute if score randomizer obl.rng matches 1..15 run effect give @s slowness 3 4 true
execute if score randomizer obl.rng matches 1..15 run effect give @s hunger 5 225 true
execute if score randomizer obl.rng matches 1..15 run effect give @e[tag=hunger] instant_damage 1 1 true
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score randomizer obl.rng matches 1..15 run playsound minecraft:entity.husk.ambient master @s ~ ~ ~ 3 0.1