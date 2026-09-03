scoreboard players remove @s obl.item.count 1
execute if score @s obl.item.count matches ..0 run kill @s
execute store result entity @s Item.Count byte 1 run scoreboard players get @s obl.item.count