###   Ф У Н К Ц И Я
## Отсчёт длительности эффекта
scoreboard players remove @s[scores={obl.effect.tremor_burst.tick=1..}] obl.effect.tremor_burst.tick 1



###   Ч А С Т И Ц Ы
execute anchored eyes positioned ^ ^ ^ run particle electric_spark ~ ~.45 ~ 0.12 0.02 0.12 0 1



###   К О Н Е Ц
execute unless score @s obl.effect.tremor_burst.tick matches 1.. run function obl:effect/tremor/burst/end