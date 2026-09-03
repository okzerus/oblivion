particle block amethyst_block ~ ~.5 ~ 0.3 0.6 0.3 0 40 force
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
effect give @s slowness 2 1
effect give @s weakness 2 1
effect give @s mining_fatigue 2 4
effect give @s poison 2 4
damage @s 4 minecraft:mob_projectile by @e[tag=amethystpixie,limit=1]