scoreboard players add @s obl.p1 1
scoreboard players add @s obl.p2 1

execute as @s at @s if score @s obl.p1 matches 5.. run playsound block.chain.place master @a ~ ~ ~ 1 1.2
execute as @s at @s if score @s obl.p1 matches 5.. run scoreboard players set @s obl.p1 0

execute as @s at @s unless score @s obl.p2 matches 40.. run function obl:test
execute as @s at @s if score @s obl.p2 matches 40.. run scoreboard players set @s obl.p2 0