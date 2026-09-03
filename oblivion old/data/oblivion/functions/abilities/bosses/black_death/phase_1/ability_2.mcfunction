execute if score @s abilities matches 300 run tag @s add obl.performing_ability
execute if score @s abilities matches 300 run tag @s add obl.black_death.dont_move
execute if score @s abilities matches 300 as @e[type=marker,tag=obl.black_death.tentacle.end] at @s if entity @a[distance=..25] run tag @s add obl.black_death.tentacle.can_shoot
execute if score @s abilities matches 300 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 304 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 308 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 308 run tag @e[type=marker] remove obl.black_death.tentacle.shot
execute if score @s abilities matches 312 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 316 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 320 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 320 run tag @e[type=marker] remove obl.black_death.tentacle.shot
execute if score @s abilities matches 324 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 328 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 332 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 332 run tag @e[type=marker] remove obl.black_death.tentacle.shot
execute if score @s abilities matches 336 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 340 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 344 as @e[type=marker,tag=obl.black_death.tentacle.can_shoot,tag=!obl.black_death.tentacle.shot,sort=random,limit=1] at @s run function oblivion:abilities/bosses/black_death/tentacles/attack
execute if score @s abilities matches 348 run tag @e[type=marker] remove obl.black_death.tentacle.shot
execute if score @s abilities matches 348 run tag @e[type=marker] remove obl.black_death.tentacle.can_shoot
execute if score @s abilities matches 348 run tag @s remove obl.performing_ability
execute if score @s abilities matches 348 run tag @s remove obl.black_death.dont_move
