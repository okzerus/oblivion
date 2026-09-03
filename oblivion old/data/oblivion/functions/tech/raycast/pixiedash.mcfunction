particle dust 1 0.2 1 1 ~ ~ ~ 0.01 0.01 0.01 0 1
particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.2
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 0.5 1.2
execute as @a[distance=..1] at @s run function oblivion:tech/abilities/amethystpixieabilities/dashdamage
scoreboard players add @s obl.dashing 1
execute unless score @s obl.dashing matches 20.. positioned ^ ^ ^.7 run function oblivion:tech/raycast/pixiedash
execute if score @s obl.dashing matches 20 positioned ~ ~ ~ run function oblivion:tech/abilities/amethystpixieabilities/dashend