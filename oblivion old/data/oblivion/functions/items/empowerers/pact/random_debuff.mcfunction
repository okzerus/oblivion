function oblivion:rng
execute if score randomizer obl.rng matches 1..10 run effect give @s weakness 1 0 false
execute if score randomizer obl.rng matches 11..20 run effect give @s slowness 1 0 false
execute if score randomizer obl.rng matches 21..30 run effect give @s mining_fatigue 1 0 false
execute if score randomizer obl.rng matches 31..40 run effect give @s unluck 1 0 false
execute if score randomizer obl.rng matches 41..50 run effect give @s darkness 2 0 false
execute if score randomizer obl.rng matches 51..60 run effect give @s blindness 1 0 false
execute if score randomizer obl.rng matches 61..70 run effect give @s hunger 1 0 false
execute if score randomizer obl.rng matches 71..80 run effect give @s wither 1 0 false
execute if score randomizer obl.rng matches 81..90 run effect give @s poison 1 0 false
execute if score randomizer obl.rng matches 91..100 run effect give @s nausea 1 0 false