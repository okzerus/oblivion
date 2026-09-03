# Particles
particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 1 normal
execute if entity @s[tag=obl.empowered.murasama] run particle dust 0.7 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 3 normal
execute if entity @s[tag=obl.empowered.murasama] run particle flame ~ ~0.5 ~ 0 0.6 0 0.2 1 normal
execute if entity @s[tag=obl.empowered.murasama] run particle angry_villager ~ ~2.3 ~ 0.3 0.1 0.3 0 1 normal

# Blood actionbar
execute if score @s obl.murasama.blood matches 101.. run scoreboard players set @s obl.murasama.blood 100
execute if score @s obl.murasama.blood matches ..0 run scoreboard players set @s obl.murasama.blood 0
title @s actionbar [{"text":"[","color":"#9C1111"},{"text":" Кровь: ","color":"#D11212"},{"score":{"name":"@s","objective":"obl.murasama.blood"},"color":"#D11212"},{"text":" ]","color":"#9C1111"}]

# Ability
execute unless entity @s[tag=obl.murasama_offhand] if predicate oblivion:items/hold.murasama.off unless score @s obl.murasama.blood matches 30.. run title @s actionbar [{"text":"[","color":"#9C1111"},{"text":" Недостаточно крови!","color":"#D11212"},{"text":" ]","color":"#9C1111"}]
execute unless score @s[tag=!obl.murasama_offhand] obl.murasama.used.ability matches 1 if score @s obl.murasama.blood matches 30.. if predicate oblivion:items/hold.murasama.off run function oblivion:items/abilities/murasama/offhand
execute if entity @s[tag=obl.murasama_offhand] if predicate oblivion:items/hold.murasama.off run function oblivion:items/abilities/murasama/ability.time
execute if entity @s[tag=obl.murasama_offhand] unless score @s obl.murasama.time.ability matches 30..41 unless predicate oblivion:items/hold.murasama.off run function oblivion:items/abilities/murasama/ability.fail
execute if entity @s[tag=obl.murasama_offhand] if score @s obl.murasama.time.ability matches 30..41 unless predicate oblivion:items/hold.murasama.off anchored eyes positioned ^ ^-.7 ^2.5 rotated ~ ~180 run function oblivion:items/abilities/murasama/ability