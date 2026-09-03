item replace entity @s weapon.mainhand with stone_sword
playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 1 1.4
particle minecraft:angry_villager ~ ~2 ~ 0.3 0.3 0.3 0 6
data merge entity @s {Motion:[0.0d,0.5d,0.0d],Attributes:[{Name:"generic.movement_speed",Base:0.2f}]}
tag @s add obl.ghost_ship.cannoneer.switched