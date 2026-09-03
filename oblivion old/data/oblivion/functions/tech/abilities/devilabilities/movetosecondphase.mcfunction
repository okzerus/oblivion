tag @s add phase2
tag @s remove phase1
scoreboard players set @s abilities 0

bossbar set oblivion:devil name [{"text":"Дьявол ","color":"red"},{"text":"[ФАЗА 2]","color":"gold"}]

playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 10 0.1
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 0.1
particle minecraft:soul ~ ~1 ~ 0 0 0 1 1000
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 1 1000
playsound minecraft:entity.zombie_villager.cure master @a[distance=..100] ~ ~ ~ 1 0.1