###   S E L E C T   R A N D O M   A R M O R   P A R T   A N D   D I S A P P E A R
execute if score @s abilities matches 200 at @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] run tag @e[type=vex,tag=obl.black_death.part,tag=!obl.cursed_sword,limit=1,sort=random,distance=.001..] add obl.black_death.chosen
execute if score @s abilities matches 200 run data merge entity @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] {Invulnerable:1b}
execute if score @s abilities matches 200 run tag @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] add obl.invulnerable
execute if score @s abilities matches 200 run tag @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] remove obl.black_death.chosen
execute if score @s abilities matches 200 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.3 0.5
execute if score @s abilities matches 200 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1.3 0.5
execute if score @s abilities matches 200 run particle minecraft:flash ~ ~ ~
execute if score @s abilities matches 200 run tag @s add obl.true_invisibility

###   A P P E A R
execute if score @s abilities matches 210 run data merge entity @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] {Invulnerable:0b}
execute if score @s abilities matches 210 run tag @e[type=vex,tag=obl.black_death.chosen,limit=1,sort=nearest] remove obl.invulnerable
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.3 0.5
execute if score @s abilities matches 210 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1.3 0.5
execute if score @s abilities matches 210 run particle minecraft:flash ~ ~ ~
execute if score @s abilities matches 210 run tag @s remove obl.true_invisibility