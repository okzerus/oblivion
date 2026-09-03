###   A N N O U N C E M E N T
tellraw @a [{"text":"Вы выпустили рождественского духа на волю!","italic":true,"color":"aqua"},{"text":"\n"}]

###   F U N C T I O N
execute as @a at @s if dimension overworld run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10 0.1
scoreboard players set xmas_spirit.escaped oblivion 1
execute unless score count.month oblivion matches 12 unless score count.month_day oblivion matches 25 run advancement grant @a[tag=obl.surviving.xm] only oblivion:advancements/events/xmasmoonsoul