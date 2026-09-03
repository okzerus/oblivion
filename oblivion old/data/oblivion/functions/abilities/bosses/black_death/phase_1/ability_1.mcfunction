execute if score @s abilities matches 100 run tag @s add obl.performing_ability
execute if score @s abilities matches 100 run tag @s add obl.black_death.dont_move
execute if score @s abilities matches 100 as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/attacks/phase_1/ability_1/any.1
execute if score @s abilities matches 100 run summon marker ~ ~ ~ {Tags:["obl.temp.black_death_charge"]}
execute if score @s abilities matches 100 run tp @e[type=marker,tag=obl.temp.black_death_charge,limit=1,sort=nearest] ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes
execute if score @s abilities matches 100 as @e[type=marker,tag=obl.temp.black_death_charge,limit=1,sort=nearest] at @s anchored eyes run function oblivion:abilities/reflectable_attack_announce
execute if score @s abilities matches 100 as @e[type=marker,tag=obl.temp.black_death_charge,limit=1,sort=nearest] at @s run function oblivion:abilities/beam_attack_particles
execute if score @s abilities matches 100 run data modify entity @s Rotation set from entity @e[type=marker,tag=obl.temp.black_death_charge,limit=1,sort=nearest] Rotation
execute if score @s abilities matches 100 run kill @e[type=marker,tag=obl.temp.black_death_charge,limit=1,sort=nearest]

execute if score @s abilities matches 110 run tag @s remove obl.black_death.dont_move
execute if score @s abilities matches 110 run tag @s remove obl.black_death.speed.1
execute if score @s abilities matches 110 run tag @s remove obl.black_death.speed.2
execute if score @s abilities matches 110 run tag @s add obl.black_death.speed.3
execute if score @s abilities matches 110 run tag @s add obl.black_death.charging
execute if score @s abilities matches 110 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.85
execute if score @s abilities matches 110 run tag @s remove obl.performing_ability