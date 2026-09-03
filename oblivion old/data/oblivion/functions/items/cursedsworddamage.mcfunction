# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..40 run particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 1..40 run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1.6
execute if score randomizer obl.rng matches 1..5 run effect give @s mining_fatigue 10 1 false
execute if score randomizer obl.rng matches 6..10 run effect give @s slowness 10 1 false
execute if score randomizer obl.rng matches 11..15 run effect give @s nausea 10 1 false
execute if score randomizer obl.rng matches 16..20 run effect give @s blindness 10 1 false
execute if score randomizer obl.rng matches 21..25 run effect give @s weakness 10 1 false
execute if score randomizer obl.rng matches 26..30 run effect give @s hunger 10 1 false
execute if score randomizer obl.rng matches 31..35 run effect give @s poison 10 1 false
execute if score randomizer obl.rng matches 36..40 run effect give @s wither 10 1 false