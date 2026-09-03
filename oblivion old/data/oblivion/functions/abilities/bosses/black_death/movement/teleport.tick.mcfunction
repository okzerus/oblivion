scoreboard players add @s obl.black_death.teleporting 1
particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 0.3 2

execute at @e[type=marker,tag=obl.black_death.teleport_position,sort=nearest,limit=1] run particle minecraft:squid_ink ~ ~.1 ~ 0.6 0 0.6 0 3

execute if score @s obl.black_death.teleporting matches 40 run function oblivion:abilities/bosses/black_death/movement/teleport.perform.1
execute if score @s obl.black_death.teleporting matches 41.. run function oblivion:abilities/bosses/black_death/movement/teleport.perform.2