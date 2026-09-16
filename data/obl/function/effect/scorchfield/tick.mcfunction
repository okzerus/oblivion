###   Ф У Н К Ц И Я
## Неуязвимость к дебаффу Ожог при 100+ счётчике Пепелища.
execute if score @s obl.effect.scorchfield.count matches 100.. run tag @s add obl.scorch_immune
## Спад эффекта. Постоянно устанавливается на 300 при наложении эффекта Пепелища. (item/weapon/crack_of_dawn/hit), Или когда цели получают урон от Ожога в пределах действия Пепелища (tech/effect/debuff/scorch/tick).
execute if score @s obl.effect.scorchfield.decay matches 1.. run scoreboard players remove @s obl.effect.scorchfield.decay 1
## Когда спадание эффекта падает до нуля, начинает снижать счётчик Пепелища.
execute if score #5t_passed obl matches 1 run scoreboard players remove @s[scores={obl.effect.scorchfield.decay=0}] obl.effect.scorchfield.count 1
## Избыточный счёт Пепелища устанавливается обратно на 300.
execute if score @s obl.effect.scorchfield.count matches 301.. run scoreboard players set @s obl.effect.scorchfield.count 300


###   Ч А С Т И Ц Ы
execute if score @s obl.effect.scorchfield.count matches 1..49 run particle minecraft:smoke ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.scorchfield.count matches 50.. run particle minecraft:large_smoke ~ ~ ~ 10 3 10 0.01 8 normal
execute if score @s obl.effect.scorchfield.count matches 50..149 run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 3 normal
execute if score @s obl.effect.scorchfield.count matches 150.. run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 10 0 10 0 5 normal