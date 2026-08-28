###   З А М О Р О З К А
execute if score #frozen_spawners obl.frozen_spawners matches 1.. run function obl:tech/spawner/spawner.frozen

###   Ч А С Т И Ц Ы
execute align xyz run particle minecraft:soul_fire_flame ~.5 ~.5 ~.5 0.3 0.3 0.3 0 1 normal

#########################################################################################   С О Р Т И Р О В К А   ###################################################################################################################

## Типовой (generic)
# Зомби
execute if entity @s[type=marker, tag=obl.spawner.generic] run function obl:tech/spawner/spawner_types/generic/zombie/main
# Скелет
#abc...

## abc...

#########################################################################################   С О Р Т И Р О В К А   ###################################################################################################################

