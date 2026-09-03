###   A N N O U N C E M E N T
tellraw @a [{"text":"\n"},{"text":"Сегодня великий день!","italic":true,"color":"yellow"},{"text":"\n"}]

###   E F F E C T S
execute as @a at @s if dimension minecraft:overworld run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5 1.4

###   F U N C T I O N
execute as @a at @s if dimension minecraft:overworld run function oblivion:music/events/start.gd
scoreboard players set great_day oblivion 1
scoreboard players set @a obl.music.gd 0
scoreboard players set obl.isevent oblivion 1
advancement grant @a only oblivion:advancements/events/greatday
execute if predicate oblivion:raining run weather clear 1000s