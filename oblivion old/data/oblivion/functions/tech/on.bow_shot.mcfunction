advancement revoke @s only oblivion:mobs/starving_husk
execute if score @s oblivion.hunger matches 1.. run particle item rotten_flesh ~ ~1 ~ 0.3 0.6 0.3 0 100 force
execute if score @s oblivion.hunger matches 1.. run effect give @s slowness 3 4 true
execute if score @s oblivion.hunger matches 1.. run effect give @s hunger 8 225 true
execute if score @s oblivion.hunger matches 1.. run effect give @e[tag=starving_husk,limit=1,sort=nearest] instant_damage 1 1 true
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 3 0.1
execute if score @s oblivion.hunger matches 1.. run playsound minecraft:entity.husk.ambient master @s ~ ~ ~ 3 0.1