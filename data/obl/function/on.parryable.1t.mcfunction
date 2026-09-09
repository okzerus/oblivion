###   С Т А Р Т
## Выдача тегов и айди
execute unless entity @s[tag=obl.projectile.init,type=!zombie,type=!magma_cube,type=!sulfur_cube,type=!zombified_piglin] run function obl:tech/parrying/projectile/init


###   С П И С О К   С Н А Р Я Д О В
# надо добавить breeze_wind_charge, wind_charge, и sulfur_cube
execute if entity @s[type=#minecraft:arrows] run function obl:tech/parrying/projectile/list/arrow
execute if entity @s[type=snowball] run function obl:tech/parrying/projectile/list/snowball
execute if entity @s[type=egg] run function obl:tech/parrying/projectile/list/egg
execute if entity @s[type=trident] run function obl:tech/parrying/projectile/list/trident
execute if entity @s[type=lightning_bolt] run function obl:tech/parrying/projectile/list/lightning_bolt
execute if entity @s[type=ender_pearl] run function obl:tech/parrying/projectile/list/ender_pearl
execute if entity @s[type=firework_rocket] run function obl:tech/parrying/projectile/list/firework_rocket
execute if entity @s[type=fireball] run function obl:tech/parrying/projectile/list/fireball
execute if entity @s[type=dragon_fireball] run function obl:tech/parrying/projectile/list/dragon_fireball
execute if entity @s[type=small_fireball] run function obl:tech/parrying/projectile/list/small_fireball
execute if entity @s[type=#obl:potions] run function obl:tech/parrying/projectile/list/potion
execute if entity @s[type=falling_block] run function obl:tech/parrying/projectile/list/falling_block
execute if entity @s[type=llama_spit] run function obl:tech/parrying/projectile/list/llama_spit
execute if entity @s[type=wither_skull] run function obl:tech/parrying/projectile/list/wither_skull
execute if entity @s[type=fishing_bobber] run function obl:tech/parrying/projectile/list/fishing_bobber
execute if entity @s[type=item] run function obl:tech/parrying/projectile/list/item
execute if entity @s[type=shulker_bullet] run function obl:tech/parrying/projectile/list/shulker_bullet
execute if entity @s[type=experience_bottle] run function obl:tech/parrying/projectile/list/experience_bottle
execute if entity @s[type=magma_cube] if entity @s[nbt={Size:0}] run function obl:tech/parrying/projectile/list/magma_cube
execute if entity @s[type=tnt] run function obl:tech/parrying/projectile/list/tnt
#execute if entity @s[type=zombie,tag=obl.crystodian] run function obl:tech/parrying/projectile/list/mob.crystodian
#execute if entity @s[type=armor_stand,tag=obl.marauder.grenade,tag=!obl.on_ground] run function obl:tech/parrying/projectile/list/mob.marauder_grenade


###   Ч А С Т И Ц Ы
## Если снаряд парирован, излучает частицы в полёте
execute if entity @s[tag=obl.projectile.reflected,tag=!obl.in_ground,tag=!obl.on_ground] run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 3 force @a