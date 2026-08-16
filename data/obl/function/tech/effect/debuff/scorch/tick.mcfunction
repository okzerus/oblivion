###   Ч А С Т И Ц Ы
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 2
particle smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 4



###   Ф У Н К Ц И Я
## Убирает дебафф Ожога, если носитель также имеет бафф Пепелища с 100+ счётом.
execute if entity @s[tag=obl.effect.buff.scorchfield,tag=!obl.scorch_immune,scores={obl.effect.buff.scorchfield.count=100..}] run function obl:tech/effect/debuff/scorch/end
## Уменьшается когда ЕСТЬ игрок с Пепелищем в радиусе 15 блоков; останавливается на 100 ЕСЛИ у упомянутого игрока есть 200+ счёта Пепелища.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15,score={obl.effect.buff.scorchfield.count=200..}] if score @s obl.effect.debuff.scorch.tick matches 101.. run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Восстановить длительность Ожога на 5 секунд если рядом находится игрок с 200+ счётом Пепелища и длительность ниже 5 секунд.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15,score={obl.effect.buff.scorchfield.count=200..}] if score @s obl.effect.debuff.scorch.tick matches ..99 run scoreboard players set @s obl.effect.debuff.scorch.tick 100
## Уменьшается когда НЕТ игрока с 200+ счётом Пепелища в радиусе 15 блоков, вплоть до 0.
execute unless entity @a[tag=obl.effect.buff.scorchfield,distance=..15,score={obl.effect.buff.scorchfield.count=200..}] run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Если рядом есть игрок с 300 счётом Пепелища, шанс на то чтобы перебросить Ожог на ближайшего моба без Ожога.
# Функция tech/effect/debuff/scorch/spread, вызывается из on.1s.mcfunction

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