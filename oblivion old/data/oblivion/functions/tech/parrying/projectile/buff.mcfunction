###   S T A R T
tag @s add obl.empowered.parry
tag @s add obl.empowered.parry.projectile
scoreboard players add @s obl.parry.projectile_count 1


###   B U F F
execute unless score @s obl.parry.projectile_count matches 4.. run scoreboard players add @s obl.stackable.jump_boost 50
execute unless score @s obl.parry.projectile_count matches 4.. run scoreboard players add @s obl.stackable.speed 100


###   B U F F   T I M E
scoreboard players set @s obl.parry.empower_tick 30