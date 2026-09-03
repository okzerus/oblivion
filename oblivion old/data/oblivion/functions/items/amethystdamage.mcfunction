# Randomizer

function oblivion:rng

execute unless score randomizer obl.rng matches 1..8 run particle block amethyst_block ~ ~.5 ~ 0.3 0.6 0.3 0 20 force
execute if score randomizer obl.rng matches 1..8 run particle block amethyst_block ~ ~.5 ~ 0.3 0.6 0.3 0 200 force
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 2
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
execute if score randomizer obl.rng matches 1..8 run effect give @s slowness 2 20 true
execute if score randomizer obl.rng matches 1..8 run effect give @s weakness 2 20 true
execute if score randomizer obl.rng matches 1..8 run effect give @s mining_fatigue 2 20 true
execute if score randomizer obl.rng matches 1..8 run tp @s ~ ~ ~ ~ 90
execute if score randomizer obl.rng matches 1..8 run data merge entity @s {NoAI:1b}
execute if score randomizer obl.rng matches 1..8 run tag @s add amethysted

tag @s add obl.wasdamaged
schedule function oblivion:tech/removedamaged 1t