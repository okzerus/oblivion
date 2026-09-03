scoreboard players add @s grisaia 1

execute if score @s grisaia matches 2 if score @s oblivion.hunger matches ..19 run effect give @s minecraft:saturation 1 0 true
execute if score @s grisaia matches 2 if score @s oblivion.hunger matches ..19 run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 1
execute if score @s grisaia matches 2 if score @s oblivion.hunger matches ..19 run particle item golden_apple{CustomModelData:5008} ~ ~1.4 ~ 0.1 0 0.1 0 3
execute if score @s grisaia matches 2 if score @s oblivion.hunger matches ..19 run scoreboard players add @s obl.grisaiacount 1
execute if score @s grisaia matches 2 if score @s oblivion.hunger matches ..19 if score @s obl.grisaiacount matches 1000 run advancement grant @s only oblivion:advancements/accs/other/grisaia
execute if score @s grisaia matches 2.. run scoreboard players set @s grisaia 0