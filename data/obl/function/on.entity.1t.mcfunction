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

###   Я Й Ц А   А Д М И Н А
execute if entity @s[type=marker,tag=obl.admin_summoner] run function obl:tech/admin_summoner

###   З Д О Р О В Ь Е
# Обновить здоровье сущности из NBT
execute store result score @s obl.health run data get entity @s Health


###   Э Ф Ф Е К Т Ы
# Ожог
execute if entity @s[tag=obl.effect.scorch] run function obl:effect/scorch/tick


## Объявление
execute if entity @s[type=text_display,tag=obl.announcement_marker] run function obl:tech/tick.announcement_marker


###   В И З У А Л Ь Н Ы Е   Э Ф Ф Е К Т Ы
execute as @s[tag=obl.vfx] run function obl:tech/vfx.1t


###   Н Е О Б Ы Ч Н Ы Е   Э Ф Ф Е К Т Ы   ( U N U S U A L S )
execute if entity @s[type=marker,tag=obl.circling_unusual] run function obl:tech/unusual/main.marker


###   С П А В Н Е Р Ы
# Проверка на наличие моба в спавнере
execute unless score #frozen_spawners obl.frozen_spawners matches 1.. as @s[type=marker,tag=obl.spawner.init] if entity @s[tag=obl.spawner.mob.unset] run function obl:tech/spawner/spawner.setmob
# Инициализирует спавнер как только в него добавляется тег моба
execute unless score #frozen_spawners obl.frozen_spawners matches 1.. as @s[type=marker,tag=obl.spawner.init] unless entity @s[tag=obl.spawner.mob.unset] run function obl:tech/spawner/init
# Основная функция спавнера
execute if entity @s[type=marker,tag=obl.spawner,tag=!obl.spawner.init] run function obl:tech/spawner/main
execute as @s[type=marker,tag=obl.spawner] unless block ~ ~ ~ spawner run function obl:tech/spawner/destroy
# Проверка смерти для моба-транспорт
execute as @s[tag=obl.spawner.vehicle_mob] unless predicate obl:has_passenger run function obl:tech/add.death_marker

###   П А Р И Р О В А Н И Е
execute if entity @s[tag=obl.parrying.target] run function obl:tech/parrying/direct/target

###   О Ч И С Т К А
tag @s remove obl.temp.took_damage

#execute if entity @s[type=marker,tag=obl.spawner,tag=!obl.spawner.init] run scoreboard players set @s obl.spawner.difficulty 3
#execute if entity @s[type=marker,tag=obl.spawner,tag=!obl.spawner.init] run scoreboard players set @s obl.spawner.death_count 19
