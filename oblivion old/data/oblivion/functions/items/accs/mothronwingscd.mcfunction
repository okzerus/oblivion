scoreboard players add @s mothron.cooldown 1
execute if score @s mothron.cooldown matches 7 if entity @s[y=256,dy=1000] run advancement grant @s only oblivion:advancements/accs/other/wings
execute if score @s mothron.cooldown matches 7 run function oblivion:items/accs/effects/mothronwingseffect
execute if score @s mothron.cooldown matches 200.. run function oblivion:items/accs/effects/mothronwingsready