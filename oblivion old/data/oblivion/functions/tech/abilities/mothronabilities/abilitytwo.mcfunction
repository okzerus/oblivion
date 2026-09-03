execute if score @s abilities matches 80 run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 10 0.1
execute if score @s abilities matches 80 run summon lightning_bolt ~ ~5 ~

execute if score @s abilities matches 80 run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["mothronland"]}
execute if score @s abilities matches 83 run tp @s @e[tag=mothronland,limit=1,sort=nearest]
execute if score @s abilities matches 83 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 85 run playsound minecraft:entity.turtle.lay_egg master @a ~ ~ ~ 1 1
execute if score @s abilities matches 85 run summon item ~ ~ ~1 {PickupDelay:32767,Age:-32768,Tags:[mothronegg],Item:{id:"minecraft:phantom_spawn_egg",Count:1b},Invulnerable:1b}
execute if score @s abilities matches 85 run particle minecraft:flame ~ ~ ~1 0.1 0.1 0.1 0.1 50 force
execute if score @s abilities matches 86 run playsound minecraft:entity.turtle.lay_egg master @a ~ ~ ~ 1 1
execute if score @s abilities matches 86 run summon item ~1 ~ ~ {PickupDelay:32767,Age:-32768,Tags:[mothronegg],Item:{id:"minecraft:phantom_spawn_egg",Count:1b},Invulnerable:1b}
execute if score @s abilities matches 86 run particle minecraft:flame ~1 ~ ~ 0.1 0.1 0.1 0.1 50 force
execute if score @s abilities matches 87 run playsound minecraft:entity.turtle.lay_egg master @a ~ ~ ~ 1 1
execute if score @s abilities matches 87 run summon item ~ ~ ~-1 {PickupDelay:32767,Age:-32768,Tags:[mothronegg],Item:{id:"minecraft:phantom_spawn_egg",Count:1b},Invulnerable:1b}
execute if score @s abilities matches 87 run particle minecraft:flame ~ ~ ~-1 0.1 0.1 0.1 0.1 50 force
execute if score @s abilities matches 88 run playsound minecraft:entity.turtle.lay_egg master @a ~ ~ ~ 1 1
execute if score @s abilities matches 88 run summon item ~-1 ~ ~ {PickupDelay:32767,Age:-32768,Tags:[mothronegg],Item:{id:"minecraft:phantom_spawn_egg",Count:1b},Invulnerable:1b}
execute if score @s abilities matches 88 run particle minecraft:flame ~-1 ~ ~ 0.1 0.1 0.1 0.1 50 force
execute if score @s abilities matches 90 run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 10 0.1
execute if score @s abilities matches 90 run data merge entity @s {NoAI:0b}
execute if score @s abilities matches 90 run kill @e[tag=mothronland]
execute if score @s abilities matches 91.. run scoreboard players set @s abilities 0