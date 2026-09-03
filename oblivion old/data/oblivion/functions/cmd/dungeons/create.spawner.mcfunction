execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ spawner unless block ~ ~-1 ~ spawner run setblock ~ ~ ~ spawner destroy

execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ spawner run summon marker ~ ~ ~ {Tags:["obl.spawner","obl.temp.spawner_creation"]}
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ spawner run particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ spawner run particle minecraft:enchant ~ ~.5 ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ spawner run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1.5 1.8

execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ spawner run summon marker ~ ~-1 ~ {Tags:["obl.spawner","obl.temp.spawner_creation"]}
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ spawner run particle minecraft:soul_fire_flame ~ ~-1 ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ spawner run particle minecraft:enchant ~ ~-.5 ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ spawner run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~-1 ~ 1.5 1.8

execute if score #pause_spawners oblivion matches 1 as @e[type=marker,tag=obl.temp.spawner_creation,sort=nearest,limit=1] at @s positioned ~ ~.6 ~ run summon text_display ~ ~ ~ {billboard:"center",alignment:"center",Tags:["obl.spawner_pause"],text:'{"text":"На паузе","color":"#78FFFA"}'}
tag @e[type=marker] remove obl.temp.spawner_creation