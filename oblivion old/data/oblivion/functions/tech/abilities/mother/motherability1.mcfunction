playsound entity.spider.ambient hostile @a ~ ~ ~ 1 0.5
execute at @a[distance=..15] run fill ~1 ~ ~1 ~-1 ~ ~-1 cobweb replace air
execute at @a[distance=..15] run particle minecraft:falling_dust cobweb ~ ~1 ~ 0.4 0.6 0.4 0 200