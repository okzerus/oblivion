particle minecraft:falling_lava ~ ~6 ~ 1.2 0 1.2 0 5 force @a
particle dust 0.6 0 0 4 ~ ~6 ~ 1.2 0 1.2 0 5 force @a
scoreboard players add @s obl.lightning_buff 1
execute if score @s obl.lightning_buff matches 140 run function oblivion:events/blood_moon/lightning_buff_strike
execute if score @s obl.lightning_buff matches 220.. run function oblivion:events/blood_moon/lightning_buff_stop