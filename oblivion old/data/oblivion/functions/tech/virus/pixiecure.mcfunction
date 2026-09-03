particle dust 1 0 0 3 ~ ~1 ~ 0.3 0.6 0.3 0 100 force
effect clear @s nausea
effect clear @s weakness
effect clear @s blindness
effect clear @s mining_fatigue
effect clear @s slowness
effect clear @s hunger
effect clear @s wither
effect clear @s poison
effect give @s regeneration 5 2 false
effect give @s blindness 2 0 true
playsound minecraft:entity.wandering_trader.drink_milk master @a ~ ~ ~ 1 1
tag @s add obl.curingtick
tag @s remove obl.infected
scoreboard players set @s infectedcount 0
advancement grant @s[type=player] only oblivion:advancements/mobs/overworld/pixiecure