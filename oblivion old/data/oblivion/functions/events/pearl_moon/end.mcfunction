###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Жемчужная луна заходит за горизонт...","italic":true,"color":"dark_aqua"},{"text":"\n"}]

###   F U N C T I O N
scoreboard players set pearl_moon oblivion 0
scoreboard players add pearl_moon_count oblivion 1

scoreboard players set obl.isevent oblivion 0

tag @a remove obl.announced.pm

stopsound @a voice