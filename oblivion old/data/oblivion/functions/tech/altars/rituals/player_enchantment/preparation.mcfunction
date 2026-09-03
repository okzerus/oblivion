tag @p[distance=...5] add obl.player_enchanting.preparing
execute as @p[tag=obl.player_enchanting.preparing,distance=...5] run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.2
execute as @p[tag=obl.player_enchanting.preparing,distance=...5] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.2
tag @s add obl.altar.preparing
tag @s add obl.altar.ritual
tag @s add obl.altar.ritual.player_enchanting
scoreboard players set @s obl.altar.stability 1