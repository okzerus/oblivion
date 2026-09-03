# Randomizer

function oblivion:rng

playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 0.5 2
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 2
particle minecraft:block glowstone ~ ~0.2 ~ 2 0.1 2 0 70 force
execute if score randomizer obl.rng matches 1..5 run effect give @s strength 3 1 false
execute if score randomizer obl.rng matches 1..5 run particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 1..5 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 0.4
execute if score randomizer obl.rng matches 1..5 run title @s times 0 20 0
execute if score randomizer obl.rng matches 1..5 run title @s title {"text":"\u0421\u0438\u043b\u0430 II","color":"gold"}
execute if score randomizer obl.rng matches 6..10 run effect give @s jump_boost 3 3 false
execute if score randomizer obl.rng matches 6..10 run particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 6..10 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 0.4
execute if score randomizer obl.rng matches 6..10 run title @s times 0 20 0
execute if score randomizer obl.rng matches 6..10 run title @s title {"text":"\u041f\u0440\u044b\u0433\u0443\u0447\u0435\u0441\u0442\u044c IV","color":"gold"}
execute if score randomizer obl.rng matches 11..15 run effect give @s resistance 3 1 false
execute if score randomizer obl.rng matches 11..15 run particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 11..15 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 0.4
execute if score randomizer obl.rng matches 11..15 run title @s times 0 20 0
execute if score randomizer obl.rng matches 11..15 run title @s title {"text":"\u0421\u043e\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435 II","color":"gold"}
execute if score randomizer obl.rng matches 16..20 run effect give @s speed 3 3 false
execute if score randomizer obl.rng matches 16..20 run particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 16..20 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 0.4
execute if score randomizer obl.rng matches 16..20 run title @s times 0 20 0
execute if score randomizer obl.rng matches 16..20 run title @s title {"text":"\u0421\u043a\u043e\u0440\u043e\u0441\u0442\u044c IV","color":"gold"}