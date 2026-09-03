particle minecraft:falling_dust cobweb ~ ~.3 ~ 0.2 0.2 0.2 0 1
scoreboard players add @s oblivion 1

execute if score @s oblivion matches 60.. run function oblivion:tech/abilities/mother/cavespidersummon

execute if entity @e[tag=mother,distance=15..] run function oblivion:tech/abilities/mother/mothereggdestroy
execute positioned ~ ~1 ~ if entity @a[distance=..0.5] run function oblivion:tech/abilities/mother/mothereggdestroy