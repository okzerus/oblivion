execute if entity @s[tag=obl.ghost_ship.marauder.range] if entity @p[distance=..5,tag=obl.temp.target] run item replace entity @s weapon.mainhand with stone_sword
execute if entity @s[tag=obl.ghost_ship.marauder.range] if entity @p[distance=..5,tag=obl.temp.target] run item replace entity @s weapon.offhand with air
execute if entity @s[tag=obl.ghost_ship.marauder.range] if entity @p[distance=..5,tag=obl.temp.target] run tag @s add obl.ghost_ship.marauder.melee
execute if entity @s[tag=obl.ghost_ship.marauder.range] if entity @p[distance=..5,tag=obl.temp.target] run tag @s remove obl.ghost_ship.marauder.range

execute if entity @s[tag=obl.ghost_ship.marauder.melee] if entity @p[distance=5.001..12,tag=obl.temp.target] run item replace entity @s weapon.mainhand with flint_and_steel
execute if entity @s[tag=obl.ghost_ship.marauder.melee] if entity @p[distance=5.001..12,tag=obl.temp.target] run item replace entity @s weapon.offhand with tnt
execute if entity @s[tag=obl.ghost_ship.marauder.melee] if entity @p[distance=5.001..12,tag=obl.temp.target] run tag @s add obl.ghost_ship.marauder.range
execute if entity @s[tag=obl.ghost_ship.marauder.melee] if entity @p[distance=5.001..12,tag=obl.temp.target] run tag @s remove obl.ghost_ship.marauder.melee

playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1