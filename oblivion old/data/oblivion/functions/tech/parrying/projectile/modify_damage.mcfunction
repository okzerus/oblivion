execute store result score @s obl.projectile_damage run data get entity @s damage
execute if entity @s[type=#minecraft:arrows] run data merge entity @s {PierceLevel:1b,ShotFromCrossbow:1b}
scoreboard players add @s[type=#minecraft:arrows] obl.projectile_damage 8
execute if entity @s[type=trident] run scoreboard players operation @s obl.id.target = @e[type=#oblivion:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] obl.id
scoreboard players add @s[type=trident] obl.projectile_damage 24
execute store result entity @s damage double 1 run scoreboard players get @s obl.projectile_damage
scoreboard players reset @s obl.projectile_damage