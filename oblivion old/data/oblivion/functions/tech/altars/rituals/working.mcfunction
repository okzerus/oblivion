tp @s[scores={obl.altar.progress=30..}] ~ ~ ~ ~-2 ~
tp @s[scores={obl.altar.progress=110..}] ~ ~ ~ ~-3 ~
tp @s[scores={obl.altar.progress=195..}] ~ ~ ~ ~-4 ~
execute if entity @s[tag=obl.altar.crafting] run particle minecraft:electric_spark ~ ~1.6 ~ 0.2 0.2 0.2 0.03 1
execute if entity @s[tag=obl.altar.crafting] run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0 1

execute if entity @s[tag=obl.altar.crafting] positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.altar.item.using] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 1 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.unusualifier] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 1 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.armor] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 2 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.paper] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 2 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.armor,tag=obl.item.armor.unusual] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 3 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.summoner] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 4 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.broken_glowing_receiver] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 5 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.glowing_receiver] run function oblivion:tech/altars/ritual_denied
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 5 positioned ~ ~1.5 ~ unless entity @e[type=item,distance=...3,tag=obl.item.netherite] run function oblivion:tech/altars/ritual_denied

execute if entity @s[tag=obl.altar.ritual,tag=obl.altar.ritual.player_enchanting] as @a[distance=...5,tag=obl.player_enchanting.process] align xyz run tp @s ~.5 ~ ~.5
execute if entity @s[tag=obl.altar.ritual,tag=obl.altar.ritual.player_enchanting] unless entity @a[distance=...5,tag=obl.player_enchanting.process] positioned ~ ~1 ~ run function oblivion:tech/altars/ritual_denied

execute if entity @s[scores={obl.altar.progress=20}] run scoreboard players set @s obl.altar.ambient_speed 1
execute if entity @s[scores={obl.altar.progress=70}] run scoreboard players set @s obl.altar.ambient_speed 2
execute if entity @s[scores={obl.altar.progress=115}] run scoreboard players set @s obl.altar.ambient_speed 3
execute if entity @s[scores={obl.altar.progress=155}] run scoreboard players set @s obl.altar.ambient_speed 4
execute if entity @s[scores={obl.altar.progress=190}] run scoreboard players set @s obl.altar.ambient_speed 5
execute if entity @s[scores={obl.altar.progress=220}] run scoreboard players set @s obl.altar.ambient_speed 6
execute if entity @s[scores={obl.altar.progress=245}] run scoreboard players set @s obl.altar.ambient_speed 7
execute if entity @s[scores={obl.altar.progress=270}] run function oblivion:tech/altars/rituals/end