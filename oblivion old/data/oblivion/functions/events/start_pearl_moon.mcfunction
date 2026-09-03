###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Земля купается в ярком свете жемчужной луны","italic":true,"color":"dark_aqua"},{"text":"\n"}]

###   E F F E C T S
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5 1.4

###   F U N C T I O N
execute as @a at @s if dimension minecraft:overworld run function oblivion:music/events/start.pm
execute in overworld run gamerule doMobSpawning false
scoreboard players set pearl_moon oblivion 1
scoreboard players set next.pearl_moon oblivion 0
scoreboard players set obl.isevent oblivion 1
tag @a add obl.announced.pm
advancement grant @a only oblivion:advancements/events/pearlmoon
execute if predicate oblivion:raining run weather clear 1000s