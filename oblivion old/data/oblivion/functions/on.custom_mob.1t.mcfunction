###   B O S S E S
execute if entity @s[tag=obl.boss] run function oblivion:abilities/bosses/main

###   M O B   A B I L I T I E S
execute if entity @s[tag=obl.mob.custom_ability] run function oblivion:abilities/mobs/main

###   M I S C
## MAGMA CUBE BALLIN (PARRY)
execute if entity @s[type=magma_cube,tag=obl.on_ground] run tag @s remove obl.projectile.reflected
execute if entity @s[type=magma_cube,tag=obl.ballin] run scoreboard players remove @s obl.ballin 1
execute if entity @s[type=magma_cube,tag=obl.ballin] if score @s obl.ballin matches 0 run tag @s remove obl.ballin
execute if entity @s[type=magma_cube,tag=obl.ballin] if predicate oblivion:on.ground run data merge entity @s {NoAI:1b}
execute if entity @s[type=magma_cube,tag=obl.ballin] if predicate oblivion:on.ground run data merge entity @s {NoAI:0b,Motion:[0.0d,0.75d,0.0d]}
## CLEANUP BLACK DEATH FUCKERS
execute if entity @s[type=magma_cube,tag=!obl.boss] if entity @s[name="Чёрная Смерть"] run tp @s ~ -300 ~
execute if entity @s[type=magma_cube,tag=!obl.boss] if entity @s[name="Чёрная Смерть"] run kill @s