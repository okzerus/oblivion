### PARTICLES
execute if entity @s[type=#oblivion:bleeding.red_particle,tag=!obl.honey_bleeding] run particle block nether_wart_block ~ ~1 ~ 0.2 0.2 0.2 0 2
execute if entity @s[type=#oblivion:bleeding.green_particle,tag=!obl.honey_bleeding] run particle block moss_block ~ ~1 ~ 0.2 0.2 0.2 0 2
execute if entity @s[type=#oblivion:bleeding.purple_particle,tag=!obl.honey_bleeding] run particle block warped_wart_block ~ ~0.5 ~ 0.2 0.4 0.2 0 2
execute if entity @s[tag=obl.honey_bleeding] run particle block honey_block ~ ~0.5 ~ 0.2 0.4 0.2 0 2

### FUNCTION
scoreboard players remove @s[tag=!obl.infinite_bleeding] obl.bleeding 1
scoreboard players add @s obl.bleeding.interval 1
execute if score @s obl.bleeding.power matches 1 if score @s obl.bleeding.interval matches 45 run scoreboard players set @s obl.bleeding.interval 0
execute if score @s obl.bleeding.power matches 2 if score @s obl.bleeding.interval matches 30 run scoreboard players set @s obl.bleeding.interval 0
execute if score @s obl.bleeding.power matches 3 if score @s obl.bleeding.interval matches 20 run scoreboard players set @s obl.bleeding.interval 0
execute if score @s obl.bleeding.power matches 4 if score @s obl.bleeding.interval matches 27 run scoreboard players set @s obl.bleeding.interval 0
execute if score @s obl.bleeding.power matches 5 if score @s obl.bleeding.interval matches 15 run scoreboard players set @s obl.bleeding.interval 0

### DAMAGE
execute if score @s[tag=!obl.honey_bleeding] obl.bleeding.interval matches 0 if score @s obl.bleeding.power matches 1..3 run damage @s 1 oblivion:bleeding
execute if score @s[tag=!obl.honey_bleeding] obl.bleeding.interval matches 0 if score @s obl.bleeding.power matches 4..5 run damage @s 2 oblivion:bleeding
execute if score @s[tag=obl.honey_bleeding] obl.bleeding.interval matches 0 if score @s obl.bleeding.power matches 1..3 run damage @s 0.5 oblivion:bleeding
execute if score @s[tag=obl.honey_bleeding] obl.bleeding.interval matches 0 if score @s obl.bleeding.power matches 4..5 run damage @s 1 oblivion:bleeding
execute if score @s[tag=obl.honey_bleeding] obl.bleeding.interval matches 0 as @a[distance=.01..3] at @s run effect give @s saturation 1 0 true
execute if score @s[tag=obl.honey_bleeding] obl.bleeding.interval matches 0 as @a[distance=.01..3] at @s run playsound minecraft:item.honey_bottle.drink player @a ~ ~ ~ 1 1
execute if score @s[tag=obl.honey_bleeding] obl.bleeding.interval matches 0 as @a[distance=.01..3] at @s run particle minecraft:wax_on ~ ~1 ~ 0.3 0.6 0.3 0 10 normal
### END
execute if score @s obl.bleeding matches 0 run function oblivion:tech/bleeding_disabled