###   A N N O U N C E   S K I L L   I S S U E ( S )
execute if score @s obl.parry.spam_cd matches 7.. run tellraw @s blank_for_now



###   D A M A G E   S H I E L D
playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1.2
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield] run function obl:tech/parrying/shield_damage.mainhand
execute if entity @s[tag=!obl.temp.mainhand_detected,gamemode=!creative,predicate=obl:holding/shield_off] run function obl:tech/parrying/shield_damage.offhand
tag @s remove obl.temp.mainhand_detected