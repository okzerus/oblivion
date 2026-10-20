#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

# Это основная функция отвечающая за всё, что выполняется РАЗ каждые Х тиков.
# В будущем здесь будут более конкретные функции направленные на конкретные сущности для ещё большей оптимизации.

#################################################################################################################################################################



###   С Е Р В Е Р Н Ы Й   Т И К
## Ведём серверный тик для последующей проверки реконнекта игрока
execute store result score #server obl.server_time run time query gametime



#################################################################################################################################################################



###   И Н Т Е Р В А Л Ы
## Насчитываем разные интервалы и возвращаем #X_passed как 1 для последующих проверок в тикингах ниже.
## Пример использования: execute if score #5t_passed obl matches 1 run say Эта команда выполнится раз в 5 тиков, не смотря на то что проверяется каждый тик.
# 2 тика
scoreboard players add #2t_counting obl 1
execute if score #2t_counting obl matches 5 run scoreboard players set #2t_passed obl 1
# 5 тиков
scoreboard players add #5t_counting obl 1
execute if score #5t_counting obl matches 5 run scoreboard players set #5t_passed obl 1
# 10 тиков
scoreboard players add #10t_counting obl 1
execute if score #10t_counting obl matches 10 run scoreboard players set #10t_passed obl 1
# 1 секунда
scoreboard players add #1s_counting obl 1
execute if score #1s_counting obl matches 20 run scoreboard players set #1s_passed obl 1
# 3 секунды
scoreboard players add #3s_counting obl 1
execute if score #3s_counting obl matches 60 run scoreboard players set #3s_passed obl 1
# 5 секунд
scoreboard players add #5s_counting obl 1
execute if score #5s_counting obl matches 100 run scoreboard players set #5s_passed obl 1
# 10 секунд
scoreboard players add #10s_counting obl 1
execute if score #10s_counting obl matches 200 run scoreboard players set #10s_passed obl 1
# 30 секунд
scoreboard players add #30s_counting obl 1
execute if score #30s_counting obl matches 600 run scoreboard players set #30s_passed obl 1
# 1 минута
scoreboard players add #1m_counting obl 1
execute if score #1m_counting obl matches 1200 run scoreboard players set #1m_passed obl 1
# 5 минут
scoreboard players add #5m_counting obl 1
execute if score #5m_counting obl matches 6000 run scoreboard players set #5m_passed obl 1
# 10 минут
scoreboard players add #10m_counting obl 1
execute if score #10m_counting obl matches 12000 run scoreboard players set #10m_passed obl 1



#################################################################################################################################################################



###   Т И К И Н Г
# На КАЖДОЙ сущности
execute as @e at @s run function obl:on.entity.1t
# На КАЖДОМ мобе+игроке
execute as @e[type=#obl:all_mobs] at @s run function obl:on.mob.1t
# ТОЛЬКО на игроке
execute as @a at @s run function obl:on.player.1t
# ТОЛЬКО на сущностях, относящихся к парируемым снарядам
execute as @e[type=#obl:parryable] at @s run function obl:on.parryable.1t



#################################################################################################################################################################



###   О Ч И С Т К А
execute if score #2t_counting obl matches 2 run scoreboard players set #2t_counting obl 0
execute if score #5t_counting obl matches 5 run scoreboard players set #5t_counting obl 0
execute if score #10t_counting obl matches 10 run scoreboard players set #10t_counting obl 0
execute if score #1s_counting obl matches 20 run scoreboard players set #1s_counting obl 0
execute if score #3s_counting obl matches 60 run scoreboard players set #3s_counting obl 0
execute if score #5s_counting obl matches 100 run scoreboard players set #5s_counting obl 0
execute if score #10s_counting obl matches 200 run scoreboard players set #10s_counting obl 0
execute if score #30s_counting obl matches 600 run scoreboard players set #30s_counting obl 0
execute if score #1m_counting obl matches 1200 run scoreboard players set #1m_counting obl 0
execute if score #5m_counting obl matches 6000 run scoreboard players set #5m_counting obl 0
execute if score #10m_counting obl matches 12000 run scoreboard players set #10m_counting obl 0
scoreboard players set #2t_passed obl 0
scoreboard players set #5t_passed obl 0
scoreboard players set #10t_passed obl 0
scoreboard players set #1s_passed obl 0
scoreboard players set #3s_passed obl 0
scoreboard players set #5s_passed obl 0
scoreboard players set #10s_passed obl 0
scoreboard players set #30s_passed obl 0
scoreboard players set #1m_passed obl 0
scoreboard players set #5m_passed obl 0
scoreboard players set #10m_passed obl 0