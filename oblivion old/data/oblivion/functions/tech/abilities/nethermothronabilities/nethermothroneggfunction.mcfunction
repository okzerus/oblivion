particle dust 1 0 0 1 ~ ~.3 ~ 0.2 0.2 0.2 0 1
scoreboard players add @s oblivion 1

execute if score @s oblivion matches 120.. run function oblivion:tech/abilities/nethermothronabilities/tinynethermothronsummon

execute positioned ~ ~1 ~ if entity @a[distance=..0.5] run function oblivion:tech/abilities/nethermothronabilities/nethermothroneggbreak