## FUNCTION
execute as @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.paper,limit=1,sort=nearest] run function oblivion:tech/altars/recipes/remove.item_count

data merge entity @s {Item:{tag:{obl.unusual:0b,obl.unusual.id:0b,obl.circling_unusual:0b}}}
data modify entity @s Item.tag.display.Lore[0] set value '{"text":"Необычный эффект:","italic":false,"color":"gray"}'
data modify entity @s Item.tag.display.Lore[1] set value '{"text":"Отсутствует","italic":false,"color":"dark_gray"}'

## PARTICLES
function oblivion:tech/altars/recipes/end/crafting_particles

## CLEANUP
execute as @e[tag=obl.altar.item.using,distance=..3] at @s run function oblivion:tech/altars/recipes/end/cleanup