###   S E T   C O N S T A N T S
scoreboard players set 3 obl.dungeon_core.constant 3
scoreboard players set 4 obl.dungeon_core.constant 4

###   P E R C E N T A G E
scoreboard players operation @s obl.dungeon_core.percentage = @s obl.dungeon_core.spawner_count
scoreboard players operation @s obl.dungeon_core.percentage *= 3 obl.dungeon_core.constant
scoreboard players operation @s obl.dungeon_core.percentage /= 4 obl.dungeon_core.constant

###   R E W A R D
execute if score @s obl.dungeon_core.progress >= @s obl.dungeon_core.percentage run function oblivion:tech/structures/dungeon_core/reward
execute if score @s obl.dungeon_core.progress <= @s obl.dungeon_core.percentage run function oblivion:tech/structures/dungeon_core/destroy