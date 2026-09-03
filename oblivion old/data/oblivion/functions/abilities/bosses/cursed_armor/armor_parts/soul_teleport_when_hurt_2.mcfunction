execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.3 0.5
execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1.3 0.5
execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run particle minecraft:flash ~ ~ ~
execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run data merge entity @s {Glowing:1b,Invulnerable:0b}
execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run tag @s remove obl.invulnerable
execute as @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] at @s run tag @s remove obl.true_invisibility