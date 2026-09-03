playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 0.8
playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 0.8
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1.3 1
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1.3 1
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1.3 1
particle item stone_axe ~ ~1 ~ 0.2 0.2 0.2 0.1 20

tag @s remove obl.viking.shielded
effect clear @s resistance
effect clear @s slowness

function oblivion:tech/mob_rage_enabled
item replace entity @s weapon.offhand with air