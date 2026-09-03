effect give @s invisibility infinite 0 false
effect give @s slowness infinite 1 true

playsound minecraft:entity.shulker.shoot hostile @a[distance=..12] ~ ~ ~ 1 1.3
particle flash ~ ~1 ~
tag @s add obl.invisible

item replace entity @s weapon with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air