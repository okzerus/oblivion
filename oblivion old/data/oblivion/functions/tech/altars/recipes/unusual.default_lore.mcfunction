data modify entity @s Item.tag.display.Lore prepend value '{"text":"Отсутствует","italic":false,"color":"dark_gray"}'
data modify entity @s Item.tag.display.Lore prepend value '{"text":"Необычный эффект:","italic":false,"color":"gray"}'
data merge entity @s {Item:{tag:{obl.unusual_lore:1b}}}