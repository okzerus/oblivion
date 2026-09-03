execute if entity @s[type=marker] if score @s obl.live_tick matches 1.. run kill @s
scoreboard players add @s obl.live_tick 1