scoreboard players add @s abilities 1
execute unless entity @s[tag=obl.player_owner] run particle electric_spark ^ ^ ^.1 0.2 0.2 0.2 0 10 force

execute if entity @s[tag=obl.projectile_shooter.cursed] if score @s abilities matches 6 run function oblivion:tech/projectiles/shoot/cursed.shoot
execute if entity @s[tag=obl.projectile_shooter.cursed.acc] if score @s abilities matches 6 run function oblivion:tech/projectiles/shoot/cursed.acc.shoot
execute if entity @s[tag=obl.projectile_shooter.yamato_sword] if score @s abilities matches 6 run function oblivion:tech/projectiles/shoot/yamato_sword.shoot

execute if entity @s[tag=obl.projectile_shooter.black_death_spike] if score @s abilities matches 20 run function oblivion:tech/projectiles/shoot/black_death_spike.shoot
execute if entity @s[tag=obl.projectile_shooter.cursed_spike] if score @s abilities matches 20 run function oblivion:tech/projectiles/shoot/cursed_spike.shoot

execute if score @s abilities matches 20.. run kill @s