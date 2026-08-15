# Из on.entity.1t

## Функция для медленного взлёта и удаления оповещений об эффекте
scoreboard players add @s obl 1
tp @s ~ ~.03 ~
execute if score @s obl matches 50 run kill @s