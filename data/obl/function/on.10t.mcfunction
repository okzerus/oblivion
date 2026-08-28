#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

# Из tick.mcfunction
# Выполнение функций каждые 10 тиков.

## Детект смерти моба
execute as @e[type=marker,tag=obl.death_detector] on vehicle unless data entity @s {DeathTime:0s} run function obl:tech/spawner/death_detect
execute as @e[tag=obl.spawner.passenger_mob] unless entity @s[tag=obl.spawner.passenger_mob.lost_vehicle] on vehicle unless data entity @s {DeathTime:0s} run function obl:tech/spawner/death_detect

