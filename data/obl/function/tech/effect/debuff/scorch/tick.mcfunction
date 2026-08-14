###   Ч А С Т И Ц Ы
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 2
particle smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 4



###   Ф У Н К Ц И Я
## Уменьшается когда ЕСТЬ игрок с Пепелищем в радиусе 15 блоков; останавливается при 100.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15] if score @s obl.effect.debuff.scorch.tick matches 101.. run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Уменьшается когда НЕТ игрока с Пепелищем в радиусе 15 блоков, вплоть до 0.
execute unless entity @a[tag=obl.effect.buff.scorchfield,distance=..15] run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Восстановить длительность назад к 5 секундам если есть игрок с Пепелищем в радиусе и длительность ниже 5 секунд.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15] if score @s obl.effect.debuff.scorch.tick matches ..99 run scoreboard players set @s obl.effect.debuff.scorch.tick 100

## Увеличивает интервал между нанесением урона в зависимости от силы дебаффа.
scoreboard players add @s obl.effect.debuff.scorch.interval 1
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=30..}] run scoreboard players set @s obl.effect.debuff.scorch.interval 0
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=20..}] run scoreboard players set @s obl.effect.debuff.scorch.interval 0



###   D A M A G E
# Наносит урон в зависимости от силы эффекта.
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=0}] run damage @s 1 obl:scorch by @p[tag=obl.effect.buff.scorchfield]
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=0}] run damage @s 2 obl:scorch by @p[tag=obl.effect.buff.scorchfield]

## Добавляет счётчик Пепелища ближайшим игрокам с эффектом Пепелища.
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.count 1
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.count 2

## Цель получает урон от Ожога; Не позволяет Пепелищу спадать.
execute if score @s obl.effect.debuff.scorch.interval matches 0 run scoreboard players set @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.decay 300



###   К О Н Е Ц
execute if score @s obl.effect.debuff.scorch.tick matches 0 run function obl:tech/effect/debuff/scorch/end