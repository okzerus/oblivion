###   I D
scoreboard players add #id_holder.stand obl.id 1
scoreboard players operation @s obl.id = #id_holder.stand obl.id

###   P L A Y E R   O W N E R
execute if entity @p[distance=..5] run tag @s add obl.stand.player_owner



tag @s add obl.stand.modified