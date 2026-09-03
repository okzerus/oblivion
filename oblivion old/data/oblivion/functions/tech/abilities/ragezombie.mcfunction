scoreboard players add @s oblivion 1
execute if entity @a[distance=..20] if score @s oblivion matches 150 run function oblivion:tech/abilities/ragezombieeffect
execute at @s if entity @a[distance=..4] if score @s oblivion matches 150 run advancement grant @a[distance=..4,tag=!obl.virusimmuny] only oblivion:advancements/mobs/overworld/ragezombieinfect
execute at @s if entity @a[distance=..4] if score @s oblivion matches 150 run execute as @a[distance=..4,tag=!obl.infected,tag=!curingtick,tag=!obl.virusimmuny] run function oblivion:tech/virus/infected
execute if score @s oblivion matches 150 run scoreboard players set @s oblivion 0