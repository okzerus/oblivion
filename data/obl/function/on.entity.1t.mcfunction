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
# Выполнение функций каждый тик, на каждую сущность.



###   З Д О Р О В Ь Е
# Обновить здоровье сущности из NBT
execute store result score @s obl.health run data get entity @s Health


###   Э Ф Ф Е К Т Ы
# Ожог
execute if entity @s[tag=obl.effect.scorch] run function obl:effect/scorch/tick


## Объявление
#execute if entity @s[type=armor_stand,tag=obl.announcement_marker] run function obl:tech/tick.announcement_marker
execute if entity @s[type=text_display,tag=obl.announcement_marker] run function obl:tech/tick.announcement_marker


###   В И З У А Л Ь Н Ы Е   Э Ф Ф Е К Т Ы
execute as @s[tag=obl.vfx] run function obl:tech/vfx.1t


###   Н Е О Б Ы Ч Н Ы Е   Э Ф Ф Е К Т Ы   ( U N U S U A L S )
execute if entity @s[type=marker,tag=obl.circling_unusual] run function obl:tech/unusual/main.marker


###   С П А В Н Е Р Ы
execute unless score #frozen_spawners obl.frozen_spawners matches 1.. if entity @s[type=marker,tag=obl.spawner.init] run function obl:tech/spawner/init
execute if entity @s[type=marker,tag=obl.spawner,tag=!obl.spawner.init] run function obl:tech/spawner/main


###   О Ч И С Т К А
tag @s remove obl.temp.took_damage
execute as @s[tag=obl.death_detector] store success score @s obl on vehicle run tag @s add obl.death_detector
execute if score @s[tag=obl.death_detector] obl matches 1.. run kill @s