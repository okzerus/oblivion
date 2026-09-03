scoreboard players reset #villager_count oblivion
execute at @e[type=villager,distance=..50] run scoreboard players add #villager_count oblivion 1
execute if score #villager_count oblivion matches 5.. at @s summon marker run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/marker.spawn