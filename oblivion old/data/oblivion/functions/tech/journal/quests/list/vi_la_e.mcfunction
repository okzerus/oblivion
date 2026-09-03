scoreboard players add @s obl.player_quest_progress 1

execute if score @s obl.player_quest_progress matches 1 run function oblivion:tech/journal/quests/new
execute if score @s obl.player_quest_progress matches 2 run function oblivion:tech/journal/quests/finish

tellraw @s [{"text":"> ","color":"#FFE8FF"},{"text":"Источник голоса","color":"aqua"}]
execute if score @s obl.player_quest_progress matches 2 run tellraw @s [{"text":"> ","color":"#FFE8FF"},{"text":"+300 XP","color":"yellow"}]

execute if score @s obl.player_quest_progress matches 1 run advancement grant @s only oblivion:advancements/journal/quests/list/vi_la_e
execute if score @s obl.player_quest_progress matches 1 run tag @s add obl.looking_for_guide
execute if score @s obl.player_quest_progress matches 2 run xp add @s 300 points