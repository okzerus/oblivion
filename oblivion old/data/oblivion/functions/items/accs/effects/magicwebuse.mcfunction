playsound entity.spider.ambient hostile @a ~ ~ ~ 1 0.2
execute at @a[distance=2..30] run fill ~1 ~ ~1 ~-1 ~ ~-1 cobweb replace air
execute at @a[distance=2..30] run playsound entity.spider.ambient hostile @a ~ ~ ~ 1 1.7
scoreboard players set @s web.used 1