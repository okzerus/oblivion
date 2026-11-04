###   Ф У Н К Ц И Я
execute unless entity @s[x_rotation=70..] run tp @s ~ ~ ~ ~ 70

###   О П О В Е Щ Е Н И Е
## Даём игроку знать о оглушении и показываем длительность через динамичный subtitle
execute if entity @s[type=player] run function obl:effect/stun/hud

###   Ч А С Т И Ц Ы
particle electric_spark ~ ~2.5 ~ 0.35 0.35 0.35 0.01 3

###   К О Н Е Ц
execute if entity @s[tag=obl.infinite_stun] run return 0
scoreboard players remove @s obl.effect.stun.tick 1
execute if score @s obl.effect.stun.tick matches ..0 run function obl:effect/stun/end