execute if entity @s[tag=obl.keep_in_combat] run return 0

## Проверяем, если существует "моб-оппонент" в текущем бою
# От лица моба
execute unless entity @s[type=player] run function obl:tech/combat/check_for_player
# От лица игрока
execute if entity @s[type=player] run function obl:tech/combat/check_for_mobs
# Если проверки выше нашли оппонента, заканчиваем выполнение функции здесь и не отсчитываем режим боя.
execute if entity @s[tag=obl.temp.tick_cancel] run return run tag @s remove obl.temp.tick_cancel

scoreboard players remove @s obl.in_combat 1
execute if score @s obl.in_combat matches ..0 run function obl:tech/combat/leave