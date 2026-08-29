scoreboard players remove @s obl.parry.target_tick 1
execute if score @s obl.parry.target_tick matches ..0 run scoreboard players reset @s obl.id.target
execute if score @s obl.parry.target_tick matches ..0 run tag @s remove obl.parrying.target