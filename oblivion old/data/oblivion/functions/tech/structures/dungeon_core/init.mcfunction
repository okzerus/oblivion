tag @s add obl.has_id
scoreboard players add #id_holder.dungeon obl.id 1
scoreboard players operation @s obl.id = #id_holder.dungeon obl.id
scoreboard players set @s obl.dungeon_core.progress 0