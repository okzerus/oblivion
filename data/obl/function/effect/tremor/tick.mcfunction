###   Ф У Н К Ц И Я
## Отсчёт длительности эффекта, если сущность не в бою
scoreboard players remove @s[tag=!obl.in_combat,scores={obl.effect.tremor.tick=1..}] obl.effect.tremor.tick 1
## Если длительность достигла 0, начинаем спад тремора
scoreboard players remove @s[scores={obl.effect.tremor.tick=0,obl.effect.tremor.decay=1..}] obl.effect.tremor.decay 1
execute if score @s obl.effect.tremor.tick matches 1 run function obl:effect/tremor/setup_decay
execute if score @s obl.effect.tremor.decay matches 0 run function obl:effect/tremor/decay



###   Ч А С Т И Ц Ы
execute anchored eyes positioned ^ ^ ^ run particle entity_effect{color:[1.0,0.8,0.0,1.0]} ~ ~.5 ~ 0.2 0.05 0.2 0 1



###   К О Н Е Ц
execute unless score @s obl.effect.tremor.count matches 1.. run function obl:effect/tremor/end