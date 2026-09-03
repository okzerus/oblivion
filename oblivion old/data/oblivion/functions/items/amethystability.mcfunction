particle block amethyst_block ~ ~.5 ~ 0.3 0.6 0.3 0 100 force
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
effect give @s slowness 2 20 true
effect give @s weakness 2 20 true
effect give @s mining_fatigue 2 20 true
tp @s ~ ~ ~ ~ 90
data merge entity @s {NoAI:1b}
tag @s add amethysted