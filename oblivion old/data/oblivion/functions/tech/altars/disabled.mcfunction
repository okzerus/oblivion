function oblivion:tech/altars/ambient/candles_off
tag @s add obl.altar.disabled
playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 0.5
particle minecraft:soul_fire_flame ~ ~.3 ~ 0 0 0 0.2 50
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
execute as @e[type=item,distance=..10,tag=obl.altar.item.using] run data merge entity @s {NoGravity:0b,PickupDelay:0}