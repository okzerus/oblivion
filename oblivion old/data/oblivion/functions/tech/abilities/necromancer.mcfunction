scoreboard players add @s abilities 1

execute if score @s abilities matches 20..40 at @s run function oblivion:tech/abilities/necromancer/abilityone
execute if score @s abilities matches 120..170 at @s run function oblivion:tech/abilities/necromancer/abilitytwo
execute if score @s abilities matches 200..220 at @s run function oblivion:tech/abilities/necromancer/abilitythree
execute if score @s abilities matches 240 run scoreboard players set @s abilities 0

execute at @s at @a[distance=..3] run summon evoker_fangs
execute at @s as @a[distance=..3] run effect give @s wither 2 3 false
execute at @s at @a[distance=..3] run particle block redstone_block ~ ~ ~ 0.3 0.1 0.3 0 10
execute at @s at @a[distance=..3] run particle dust 1 0 0 1 ~ ~ ~ 0.3 0.1 0.3 0 10