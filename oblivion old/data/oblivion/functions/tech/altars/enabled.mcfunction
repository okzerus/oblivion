function oblivion:tech/altars/ambient/candles_on
tag @s remove obl.altar.disabled
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.5
particle minecraft:end_rod ~ ~2 ~ 4 4 4 0 100
scoreboard players set @s obl.altar.progress 0
scoreboard players set @s obl.altar.preparing 0
scoreboard players set @s obl.altar.ambient_speed 0
scoreboard players set @s obl.altar.recipe_id 0
scoreboard players set @s obl.altar.stability 1
scoreboard players set @s obl.altar.timer 0
tag @s remove obl.altar.working
tag @s remove obl.altar.preparing
tag @s remove obl.altar.crafting
tag @s remove obl.altar.ritual
kill @e[type=armor_stand,tag=obl.altar.ritual_deny_notification]