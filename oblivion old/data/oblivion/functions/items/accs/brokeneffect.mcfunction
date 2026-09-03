# Randomizer

function oblivion:rng

execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..3] at @s if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 5 0 false
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..3] at @s if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

advancement revoke @s only oblivion:tech/accs/brokeacc
advancement revoke @s only oblivion:tech/accs/brokeacc2