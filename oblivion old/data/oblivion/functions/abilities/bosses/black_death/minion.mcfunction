particle dust 0.7 1 0.7 1.2 ~ ~.4 ~ 0 0 0 0 1 force

scoreboard players add @s[tag=obl.black_death.minion.selected] abilities 1

execute if score @s abilities matches 1 run data merge entity @s {Glowing:1b}
execute if score @s abilities matches 1.. run particle minecraft:electric_spark ~ ~.2 ~ 0.1 0.1 0.1 0.01 1
execute if score @s abilities matches 1.. run particle minecraft:crit ~ ~.2 ~ 0.1 0.1 0.1 0.01 1

execute if score @s abilities matches 80 run function oblivion:abilities/reflectable_attack_announce
execute if score @s abilities matches 80 run tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes
execute if score @s abilities matches 80 anchored eyes facing entity @p[tag=!obl.death_boss.cd] eyes run function oblivion:abilities/beam_attack_particles
execute if score @s abilities matches 80 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 90 run summon minecraft:marker ~ ~ ~ {Tags:["obl.default_beam","obl.beam.curses"]}
execute if score @s abilities matches 90 run tp @e[type=marker,limit=1,sort=nearest,tag=obl.default_beam] @s
execute if score @s abilities matches 90 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.5
execute if score @s abilities matches 90 run data merge entity @s {Glowing:0b,NoAI:0b}

execute if score @s abilities matches 90 run tag @e[type=vex,tag=obl.black_death.minion,tag=!obl.black_death.minion.selected,sort=random,limit=1] add obl.black_death.minion.selected
execute if score @s abilities matches 90 run tag @s remove obl.black_death.minion.selected

execute if score @s abilities matches 90 run scoreboard players set @s abilities 0