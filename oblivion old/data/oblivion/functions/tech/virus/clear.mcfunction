effect give @s blindness 2 0 true
playsound minecraft:entity.wandering_trader.drink_milk master @a ~ ~ ~ 1 1
tag @s add obl.curingtick
tag @s remove obl.infected
scoreboard players set @s infectedcount 0
execute if entity @s[type=villager,nbt={ActiveEffects:[{Id:20}]}] run scoreboard players remove @a[distance=..150] infectedvill 1