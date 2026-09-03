team join creepers @e[type=creeper,tag=!bloodmob,tag=!solarmob,tag=!dnl.mob,tag=!obl.mob,distance=..30,tag=!obl.cantteam]
team join creepers @s

execute at @e[type=creeper,distance=..15] run scoreboard players add @s obl.creepercount 1
execute if score @s obl.creepercount matches 30.. run advancement grant @s only oblivion:advancements/accs/other/catears
scoreboard players set @s obl.creepercount 0