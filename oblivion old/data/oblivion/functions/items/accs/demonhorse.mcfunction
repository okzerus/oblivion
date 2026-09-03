execute as @e[type=horse,limit=1,sort=nearest] at @s run particle flame ~ ~.1 ~ 0.4 0 0.4 0.01 5 force
execute as @e[type=horse,limit=1,sort=nearest] at @s run particle lava ~ ~.1 ~ 0.4 0 0.4 0.01 1 force
execute as @e[type=horse,limit=1,sort=nearest] at @s run particle flame ~ ~0.7 ~ 0.1 0.25 0.1 0.01 3 force
execute as @e[type=horse,limit=1,sort=nearest] at @s run particle flame ^-.25 ^2 ^1.13 0 0 0 0 2 force
execute as @e[type=horse,limit=1,sort=nearest] at @s run particle flame ^.25 ^2 ^1.13 0 0 0 0 2 force
execute as @e[type=horse,limit=1,sort=nearest] at @s run effect give @s speed 2 2 true
execute as @e[type=horse,limit=1,sort=nearest] at @s run effect give @s fire_resistance 2 1 false
execute as @e[type=horse,limit=1,sort=nearest] at @s run effect give @s resistance 2 1 false
effect give @s fire_resistance 2 1 false
advancement grant @s[advancements={oblivion:advancements/accs/other/ghostrider=false}] only oblivion:advancements/accs/other/ghostrider