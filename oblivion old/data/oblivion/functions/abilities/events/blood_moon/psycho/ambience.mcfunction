scoreboard players add @s obl.mobambient 1
scoreboard players add @s obl.mobambient.2 1

execute if entity @s[tag=obl.invisible] unless entity @a[distance=..10] if score @s obl.mobambient matches 20 run playsound minecraft:entity.cow.step hostile @a ~ ~ ~ 1 0.7
execute if entity @s[tag=obl.invisible] unless entity @a[distance=..10] if score @s obl.mobambient matches 20 run particle block dirt ~ ~.2 ~ 0.2 0 0.2 0 8
execute if entity @s[tag=obl.invisible] unless entity @a[distance=..10] if score @s obl.mobambient matches 20.. run scoreboard players set @s obl.mobambient 0
execute if entity @s[tag=obl.invisible] if entity @a[distance=..10] if score @s obl.mobambient matches 10 run playsound minecraft:entity.cow.step hostile @a ~ ~ ~ 1 0.7
execute if entity @s[tag=obl.invisible] if entity @a[distance=..10] if score @s obl.mobambient matches 10 run particle block dirt ~ ~.2 ~ 0.2 0 0.2 0 8
execute if entity @s[tag=obl.invisible] if entity @a[distance=..10] if score @s obl.mobambient matches 10.. run scoreboard players set @s obl.mobambient 0

execute if entity @s[tag=obl.invisible] if score @s obl.mobambient.2 matches 100 run playsound minecraft:entity.shulker.ambient hostile @a ~ ~ ~ 1 0.7
execute if entity @s[tag=obl.invisible] if score @s obl.mobambient.2 matches 100.. run scoreboard players set @s obl.mobambient.2 0
