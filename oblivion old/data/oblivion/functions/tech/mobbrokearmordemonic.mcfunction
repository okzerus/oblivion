particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
effect give @s wither 2 2 true
tag @s add bleeding2
execute if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 7 0 false
execute if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

advancement revoke @s only oblivion:mobs/demonic_hoe_zombie