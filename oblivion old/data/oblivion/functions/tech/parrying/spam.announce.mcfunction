###   A N N O U N C E   S K I L L   I S S U E ( S )
execute if score @s obl.parry.spam_cd matches 7.. run tellraw @s[tag=!obl.parry_spam_announced.1] [{"text":"\n"},{"text":"Это что я вижу, ","color":"#FF0003"},{"text":"проблема со скиллом","color":"#FF0003","underlined":"true"},{"text":"?","color":"#FF0003"}]
execute if score @s obl.parry.spam_cd matches 7.. run tellraw @s[tag=!obl.parry_spam_announced.1] [{"text":"> Спам ПКМ повреждает щит и отключает парирование.","color":"#FF2A2C"},{"text":"\n> Оставшиеся тики: ","color":"#FF2A2C"},{"score":{"name":"@s","objective":"obl.parry.spam_cd"},"color":"#FF0003"},{"text":"\n"}]
execute if score @s obl.parry.spam_cd matches 7.. run playsound minecraft:entity.villager.no player @s[tag=!obl.parry_spam_announced.1] ~ ~ ~ 1 1
execute if score @s obl.parry.spam_cd matches 7.. run tag @s add obl.parry_spam_announced.1

execute if score @s obl.parry.spam_cd matches 90.. run tellraw @s[tag=!obl.parry_spam_announced.2] [{"text":"\n"},{"text":"Это что я вижу, ","color":"#FF0003"},{"text":"проблема со скиллом","color":"#FF0003","underlined":"true"},{"text":"?","color":"#FF0003"}]
execute if score @s obl.parry.spam_cd matches 90.. run tellraw @s[tag=!obl.parry_spam_announced.2] [{"text":"> Пожалуйста, хватит, будьте адекватнее.","color":"#FF2A2C"},{"text":"\n> Оставшиеся тики: ","color":"#FF2A2C"},{"score":{"name":"@s","objective":"obl.parry.spam_cd"},"color":"#FF0003"},{"text":"\n"}]
execute if score @s obl.parry.spam_cd matches 90.. run playsound minecraft:entity.villager.no player @s[tag=!obl.parry_spam_announced.2] ~ ~ ~ 1 1
execute if score @s obl.parry.spam_cd matches 90.. run tag @s add obl.parry_spam_announced.2

execute if score @s obl.parry.spam_cd matches 180.. run tellraw @s[tag=!obl.parry_spam_announced.3] [{"text":"\n"},{"text":"Это что я вижу, ","color":"#FF0003"},{"text":"проблема со скиллом","color":"#FF0003","underlined":"true"},{"text":"?","color":"#FF0003"}]
execute if score @s obl.parry.spam_cd matches 180.. run tellraw @s[tag=!obl.parry_spam_announced.3] [{"text":"> Вам что, не ясно? Вы ломаете свой щит.","color":"#FF2A2C"},{"text":"\n> Оставшиеся тики: ","color":"#FF2A2C"},{"score":{"name":"@s","objective":"obl.parry.spam_cd"},"color":"#FF0003"},{"text":"\n"}]
execute if score @s obl.parry.spam_cd matches 180.. run playsound minecraft:entity.villager.no player @s[tag=!obl.parry_spam_announced.3] ~ ~ ~ 1 1
execute if score @s obl.parry.spam_cd matches 180.. run tag @s add obl.parry_spam_announced.3

execute if score @s obl.parry.spam_cd matches 270.. run tellraw @s[tag=!obl.parry_spam_announced.4] [{"text":"\n"},{"text":"Это что я вижу, ","color":"#FF0003"},{"text":"проблема с головой","color":"#FF0003","underlined":"true"},{"text":"?","color":"#FF0003"}]
execute if score @s obl.parry.spam_cd matches 270.. run tellraw @s[tag=!obl.parry_spam_announced.4] [{"text":"> А, понятно. Можете немножко отдохнуть.","color":"#FF2A2C"},{"text":"\n> Оставшиеся извилины: ","color":"#FF2A2C"},{"text":"0","color":"#FF0003"},{"text":"\n"}]
execute if score @s obl.parry.spam_cd matches 270.. run playsound minecraft:entity.villager.no player @s[tag=!obl.parry_spam_announced.4] ~ ~ ~ 1 1
execute if score @s obl.parry.spam_cd matches 270.. run scoreboard players set @s[tag=!obl.parry_spam_announced.4] obl.parry.cd 24000
execute if score @s obl.parry.spam_cd matches 270.. run advancement grant @s[tag=!obl.parry_spam_announced.4] only oblivion:advancements/weaponry/shield/additions/disabled_parrying
execute if score @s obl.parry.spam_cd matches 270.. run tag @s add obl.parry_spam_announced.4



###   D A M A G E   S H I E L D
playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1.2
execute if entity @s[gamemode=!creative,predicate=oblivion:items/hold.shield] run function oblivion:tech/parrying/shield_damage.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=oblivion:items/hold.shield.off] run function oblivion:tech/parrying/shield_damage.offhand
tag @s remove obl.temp.mainhand_detected