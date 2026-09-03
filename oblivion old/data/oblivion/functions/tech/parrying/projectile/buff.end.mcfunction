tag @s remove obl.empowered.parry
tag @s remove obl.empowered.parry.projectile

scoreboard players remove @s obl.stackable.jump_boost 50
scoreboard players remove @s obl.stackable.speed 100

scoreboard players remove @s obl.parry.projectile_count 1
execute if score @s obl.parry.projectile_count matches 1.. run function oblivion:tech/parrying/projectile/buff.end