execute as @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,limit=1,sort=nearest] run function oblivion:tech/altars/recipes/remove.item_count

data merge entity @s {Item:{tag:{obl.unusual.id:45b,obl.unusual:1b}}}
data modify entity @s Item.tag.display.Lore[0] set value '{"text":"Необычный эффект:","italic":false,"color":"gray"}'
data modify entity @s Item.tag.display.Lore[1] set value '[{"text":" Демон","italic":false,"color":"#468ac6"}]'