tag @s remove obl.init
data remove block ~ ~ ~ SpawnData.entity
execute positioned ~ ~.3 ~ unless entity @e[type=text_display,tag=obl.spawner_pause,limit=1,sort=nearest,distance=..1] run summon text_display ~ ~.7 ~ {billboard:"center",alignment:"center",Tags:["obl.spawner_pause"],text:'{"text":"На паузе","color":"#78FFFA"}'}