# Particles
particle dust 0.5 0.5 1 1 ~ ~1 ~ 0.3 0.6 0.3 0 1 normal

# Style actionbar
execute if score @s obl.yamato.style matches 101.. run scoreboard players set @s obl.yamato.style 100
execute if score @s obl.yamato.style matches ..0 run scoreboard players set @s obl.yamato.style 0
title @s actionbar [{"text":"[","color":"#1c638e"},{"text":" Стиль: ","color":"#388cbf"},{"score":{"name":"@s","objective":"obl.yamato.style"},"color":"#388cbf"},{"text":" ]","color":"#1c638e"}]

# Function
execute if entity @s[tag=obl.yamato.shooting_swords] if predicate oblivion:items/hold.yamato.off run function oblivion:items/abilities/yamato/swords.time
execute if predicate oblivion:items/hold.yamato.off run function oblivion:items/abilities/yamato/offhand
execute if entity @s[tag=obl.yamato_offhand] unless predicate oblivion:items/hold.yamato.off run function oblivion:items/abilities/yamato/mainhand

execute if entity @s[tag=obl.yamato.preparing_ability] run function oblivion:items/abilities/yamato/ability.time
execute if entity @s[tag=obl.yamato.performing_ability] run function oblivion:items/abilities/yamato/ability.cutting