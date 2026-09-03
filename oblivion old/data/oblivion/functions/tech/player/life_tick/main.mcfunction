scoreboard players add @s obl.player_life_tick 1

###   J O U R N A L
execute if score @s obl.player_life_tick matches 2400 run function oblivion:tech/journal/notes/list/this_world
execute if score @s obl.player_life_tick matches 12000 run function oblivion:tech/journal/notes/list/my_essence
execute if score @s obl.player_life_tick matches 28080 run function oblivion:tech/journal/notes/list/ghost_contact
execute if score @s obl.player_life_tick matches 28180 run function oblivion:tech/journal/quests/list/vi_la_e




###   E V E N T S
execute if score @s obl.player_life_tick matches 250..300 run function oblivion:tech/player/life_tick/events/post_join
execute if score @s obl.player_life_tick matches 24000..24650 run function oblivion:tech/player/life_tick/events/noises
execute if score @s obl.player_life_tick matches 27500..27990 run function oblivion:tech/player/life_tick/events/contact