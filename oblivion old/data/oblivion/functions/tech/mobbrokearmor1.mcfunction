# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 7 0 false
execute if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
effect give @s wither 3 0 true
tag @s add bleeding1
advancement revoke @s only oblivion:mobs/iron_hoe_zombie