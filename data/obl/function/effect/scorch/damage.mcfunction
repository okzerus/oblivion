###   Ф У Н К Ц И Я
## Устанавливаем интервал до следующего получения урона, в зависимости от интенсивности ожога
scoreboard players set @s[scores={obl.effect.scorch.intensity=1}] obl.effect.scorch.interval 60
scoreboard players set @s[scores={obl.effect.scorch.intensity=2}] obl.effect.scorch.interval 50
scoreboard players set @s[scores={obl.effect.scorch.intensity=3}] obl.effect.scorch.interval 40
scoreboard players set @s[scores={obl.effect.scorch.intensity=4}] obl.effect.scorch.interval 30
scoreboard players set @s[scores={obl.effect.scorch.intensity=5}] obl.effect.scorch.interval 20
## Добавляем счётчик Пепелища, равное силе ожога, ближайшим игрокам с Пепелищем
scoreboard players operation @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.count += @s obl.effect.scorch.potency


###   У Р О Н
## Наносим урон в зависимости от силы ожога.
# Сохраняем урон в хранилище даты
execute store result storage obl:damage value int 1 run scoreboard players get @s obl.effect.scorch.potency
# Наносим урон
function obl:effect/scorch/macro with storage obl:damage
# Поддерживаем эффект Пепелища для ближайших игроков
scoreboard players set @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.decay 300
## Спецэффекты
particle lava ~ ~0.25 ~ 0 0.5 0 0 20



###   К О Н Е Ц
execute if score @s obl.effect.scorch.count matches 0 run function obl:effect/scorch/end