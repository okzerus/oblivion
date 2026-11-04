## Если сущность также имеет бафф Пепелища с 100+ счётом, отменяем функцию и заканчиваем Ожог.
execute if score @s obl.effect.scorchfield.count matches 100.. run return run function obl:effect/scorch/end

###   Ф У Н К Ц И Я
## Урон
scoreboard players remove @s[scores={obl.effect.scorch.interval=1..}] obl.effect.scorch.interval 1
execute if score @s obl.effect.regen.interval matches ..0 run function obl:effect/scorch/damage
## Длительность
# Уменьшается когда ЕСТЬ игрок с Пепелищем в радиусе 15 блоков; останавливается на 100 ЕСЛИ у упомянутого игрока есть 200+ счёта Пепелища.
execute if entity @a[tag=obl.effect.scorchfield,distance=..15,scores={obl.effect.scorchfield.count=200..}] if score @s obl.effect.scorch.tick matches 101.. run scoreboard players remove @s obl.effect.scorch.tick 1
## Восстановить длительность Ожога на 5 секунд если рядом находится игрок с 200+ счётом Пепелища и длительность ниже 5 секунд.
execute if entity @a[tag=obl.effect.scorchfield,distance=..15,scores={obl.effect.scorchfield.count=200..}] if score @s obl.effect.scorch.tick matches ..99 run scoreboard players set @s obl.effect.scorch.tick 100
## Уменьшается когда НЕТ игрока с 200+ счётом Пепелища в радиусе 15 блоков, вплоть до 0.
execute unless entity @a[tag=obl.effect.scorchfield,distance=..15,scores={obl.effect.scorchfield.count=200..}] run scoreboard players remove @s obl.effect.scorch.tick 1
## Если рядом есть игрок с 300 счётом Пепелища, каждую секунду 10% шанс на то чтобы перебросить Ожог на ближайшего моба без Ожога.
execute if score #1s_passed obl matches 1 if entity @a[distance=..15,scores={obl.effect.socrchfield.count=300}] if predicate obl:chance/10 as @e[type=#obl:all_mobs,tag=!obl.scorch_immune,tag=!obl.effect.scorch,distance=..5] at @s run function obl:effect/scorch/inflict


## Увеличивает интервал между нанесением урона в зависимости от силы дебаффа.
scoreboard players set @s[scores={obl.effect.scorch.potency=1}] obl.effect.scorch.interval 30
scoreboard players set @s[scores={obl.effect.scorch.potency=2}] obl.effect.scorch.interval 20
scoreboard players remove @s obl.effect.scorch.interval 1
## Наносит урон в зависимости от силы эффекта.
damage @s[scores={obl.effect.scorch.potency=1,obl.effect.scorch.interval=0}] 1 obl:scorch by @p[tag=obl.effect.scorchfield]
damage @s[scores={obl.effect.scorch.potency=2,obl.effect.scorch.interval=0}] 2 obl:scorch by @p[tag=obl.effect.scorchfield]
## Добавляет счётчик Пепелища ближайшим игрокам с эффектом Пепелища.
execute if entity @s[scores={obl.effect.scorch.potency=1,obl.effect.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.count 1
execute if entity @s[scores={obl.effect.scorch.potency=2,obl.effect.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.count 2
## Цель получает урон от Ожога; Не позволяем ближайшему Пепелищу спадать.



###   Ч А С Т И Ц Ы
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 1
particle smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 1



###   К О Н Е Ц
execute if score @s obl.effect.scorch.tick matches 0 run function obl:effect/scorch/end