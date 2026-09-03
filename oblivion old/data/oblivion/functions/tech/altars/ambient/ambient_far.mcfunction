execute if score @s obl.altar.ambient.2 matches 0 run playsound minecraft:entity.elder_guardian.ambient ambient @a[distance=20..70] ~ ~ ~ 7 0

scoreboard players add @s obl.altar.ambient.2 1

execute if score @s obl.altar.ambient.2 matches 300.. run scoreboard players set @s obl.altar.ambient.2 0