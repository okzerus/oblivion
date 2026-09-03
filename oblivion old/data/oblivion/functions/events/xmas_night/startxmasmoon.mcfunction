execute unless score nomessage oblivion matches 1 run tellraw @a {"text":"Наступает Рождественская ночь!","italic":true,"color":"aqua"}
execute as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.5 0.1
execute as @a at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 0.5 0.1
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.5 0.1
execute in minecraft:overworld as @a[distance=0..] run effect give @s blindness 2 0 true
scoreboard players set xmasmoon oblivion 1
scoreboard players set nextnightisxmasmoon oblivion 0
scoreboard players set @a xmasmusic 165
tag @a add announced.xm

bossbar add oblivion:xmasevent "Рождественская ночь"
bossbar set oblivion:xmasevent players @a
bossbar set oblivion:xmasevent color blue
bossbar set oblivion:xmasevent max 150
bossbar set oblivion:xmasevent value 0
bossbar set oblivion:xmasevent style notched_20
bossbar set oblivion:xmasevent visible true
weather clear 600s

tag @a add xmasmoonsurviving

gamerule mobGriefing false

scoreboard players set obl.isevent oblivion 1
scoreboard players set obl.isbadevent oblivion 1