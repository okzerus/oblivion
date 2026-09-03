###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Великий день закончился.","italic":true,"color":"yellow"},{"text":"\n"}]

###   F U N C T I O N
scoreboard players set great_day oblivion 0
scoreboard players add great_day_count oblivion 1

scoreboard players set obl.isevent oblivion 0

tag @a remove obl.announced.gd

stopsound @a voice