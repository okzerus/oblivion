# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 1..22 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 8 0 false
execute if score randomizer obl.rng matches 1..22 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
effect give @s wither 2 2 true
tag @s add bleeding2
advancement revoke @s only oblivion:mobs/diamond_hoe_zombie