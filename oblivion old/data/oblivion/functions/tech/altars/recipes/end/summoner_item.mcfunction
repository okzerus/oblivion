## FUNCTION
data merge entity @s {Item:{tag:{obl.activated:1b}}}
data modify entity @s Item.tag.display.Lore[5] set value '{"text":"Заряжен энергией Забвения","italic":false,"color":"green"}'
tag @s add obl.dont_check

## PARTICLES
function oblivion:tech/altars/recipes/end/crafting_particles

## CLEANUP
execute as @e[tag=obl.altar.item.using,distance=..3] at @s run function oblivion:tech/altars/recipes/end/cleanup