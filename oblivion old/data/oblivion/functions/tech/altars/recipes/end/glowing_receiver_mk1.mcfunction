## FUNCTION
function oblivion:tech/altars/recipes/remove.item_count
loot spawn ~ ~ ~ loot oblivion:items/other/glowing_receiver

## PARTICLES
function oblivion:tech/altars/recipes/end/crafting_particles

## CLEANUP
execute as @e[tag=obl.altar.item.using,distance=..3] at @s run function oblivion:tech/altars/recipes/end/cleanup