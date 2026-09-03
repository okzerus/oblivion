effect clear @s invisibility
effect clear @s slowness
effect give @s strength 2 1 false
effect give @s speed 2 1 false

particle flash ~ ~1 ~
playsound minecraft:entity.vindicator.celebrate hostile @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker.shoot hostile @a[distance=..12] ~ ~ ~ 1 1.3
tag @s remove obl.invisible

loot replace entity @s weapon.mainhand loot oblivion:items/weapons/psycho_knife
loot replace entity @s armor.head loot oblivion:items/trophies/bloodmoon_psycho_head
item replace entity @s armor.chest with leather_chestplate{display:{color:0}}
item replace entity @s armor.legs with leather_leggings{display:{color:0}}
item replace entity @s armor.feet with leather_boots{display:{color:0}}