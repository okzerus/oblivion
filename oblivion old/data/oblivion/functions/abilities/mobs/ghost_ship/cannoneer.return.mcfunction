item replace entity @s weapon.mainhand with flint_and_steel
playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1 1
data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0f}]}
tag @s remove obl.ghost_ship.cannoneer.switched

execute if entity @s[tag=obl.ghost_ship.cannoneer.upper] run tag @e[type=marker,tag=obl.ghost_ship.cannon.upper,tag=!obl.ghost_ship.cannon.occupied,limit=1,sort=nearest,distance=..50] add obl.temp.occupy
execute if entity @s[tag=obl.ghost_ship.cannoneer.lower] run tag @e[type=marker,tag=obl.ghost_ship.cannon.lower,tag=!obl.ghost_ship.cannon.occupied,limit=1,sort=nearest,distance=..50] add obl.temp.occupy
execute at @e[type=marker,tag=obl.temp.occupy,limit=1] positioned ^ ^ ^-4 run tp @s ~ ~ ~
tag @e[type=marker,tag=obl.temp.occupy,limit=1] add obl.ghost_ship.cannon.occupied
tag @e[type=marker] remove obl.temp.occupy