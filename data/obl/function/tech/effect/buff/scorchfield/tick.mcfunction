###   Ч А С Т И Ц Ы
execute if score @s obl.effect.buff.scorchfield.count matches 1..49 run particle minecraft:smoke ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50.. run particle minecraft:large_smoke ~ ~ ~ 10 3 10 0.01 8 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50..149 run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 3 normal
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 10 0 10 0 5 normal



###   Ф У Н К Ц И Я
tag @s add obl.effect.buff.scorchfield
## Спад эффекта. Постоянно устанавливается на 300 при наложении эффекта Пепелища. (item/weapon/crack_of_dawn/hit), Или когда цели получают урон от Ожога в пределах действия Пепелища (tech/effect/debuff/scorch/tick).
execute if score @s obl.effect.buff.scorchfield.decay matches 1.. run scoreboard players remove @s obl.effect.buff.scorchfield.decay 1
## Когда спадание эффекта падает до нуля, начинает снижать счётчик Пепелища. (Бафф: Может переместить в 5t функцию чтобы было - 4 счётчика за секунду?)
execute if entity @s[scores={obl.effect.buff.scorchfield.decay=0,obl.effect.buff.scorchfield.count=1..}] run scoreboard players remove @s obl.effect.buff.scorchfield.count 1
## еслии слишкам многа то закидываит назат на триста.
execute if score @s obl.effect.buff.scorchfield.count matches 301.. run scoreboard players set @s obl.effect.buff.scorchfield.count 300