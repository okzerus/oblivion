###   Ф У Н К Ц И И
execute if predicate oblivion:unusual/chestplate/guardian unless score @s obl.unusual.guardian_time matches 7.. run scoreboard players set @s obl.unusual.guardian_time 7
execute if predicate oblivion:unusual/chestplate/guardian run tag @s add obl.unusual.guardian.red
execute if predicate oblivion:unusual/chestplate/guardian rotated ~ 0 positioned ^.045 ^.9 ^-.2 run function oblivion:tech/unusual/effects/chestplate/guardian.hit

# Очистка
advancement revoke @s only oblivion:tech/on.hurt