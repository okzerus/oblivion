###   Ф У Н К Ц И Я
## Сначала проверяем теги моба, чтобы определить, разрешено ли его парировать, и только затем отправляем в generic
execute if entity @s[type=zombie,tag=obl.crystodian.allow_parry] run function obl:tech/parrying/projectile/list/generic
execute if entity @s[type=magma_cube,tag=!obl.on_ground] run function obl:tech/parrying/projectile/list/generic
execute if entity @s[type=sulfur_cube,tag=!obl.on_ground] run function obl:tech/parrying/projectile/list/generic

# zombified_piglin позже