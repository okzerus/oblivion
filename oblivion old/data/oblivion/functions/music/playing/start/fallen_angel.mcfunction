stopsound @s voice
tellraw @s ["",{"text":"\u266b ","color":"#DD79FF"},{"text":">","color":"#BC3BBC"},{"text":" Сменить громкость ","color":"#DD79FF"},{"text":"музыки","underlined":true,"color":"#F5BBFF","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=NUEUn_zCd2o"},"hoverEvent":{"action":"show_text","contents":["",{"text":"KEYGEN CHURCH","color":"#971213"},{"text":" -","color":"#AB1516"},{"text":" Ladikerfos","color":"#CD4143"}]}},{"text":" -","color":"#DD79FF"},{"text":" \"","color":"#9C3480"},{"text":"Голос/Речь","color":"#D053AE"},{"text":"\"","color":"#9C3480"}]
execute at @s run playsound oblivion:bosses.fallen_angel voice @s
scoreboard players set @s obl.music_sec 0
tag @s add obl.music_playing
tag @s add obl.music_playing.nether
tag @s add obl.music_playing.fallen_angel