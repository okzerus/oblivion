tag @s add obl.spawner.linked
scoreboard players operation @s obl.id = @e[type=marker,tag=obl.temp.link] obl.id
scoreboard players add @e[type=marker,tag=obl.temp.link] obl.dungeon_core.spawner_count 1