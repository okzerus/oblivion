###   Ф У Н К Ц И Я
## Устанавливаем интервал до следующего пополнения ХП, в зависимости от интенсивности регенерации
scoreboard players set @s[scores={obl.effect.regen.intensity=1}] obl.effect.regen.interval 200
scoreboard players set @s[scores={obl.effect.regen.intensity=2}] obl.effect.regen.interval 180
scoreboard players set @s[scores={obl.effect.regen.intensity=3}] obl.effect.regen.interval 160
scoreboard players set @s[scores={obl.effect.regen.intensity=4}] obl.effect.regen.interval 140
scoreboard players set @s[scores={obl.effect.regen.intensity=5}] obl.effect.regen.interval 120
scoreboard players set @s[scores={obl.effect.regen.intensity=6}] obl.effect.regen.interval 100
scoreboard players set @s[scores={obl.effect.regen.intensity=7}] obl.effect.regen.interval 80
scoreboard players set @s[scores={obl.effect.regen.intensity=8}] obl.effect.regen.interval 60
scoreboard players set @s[scores={obl.effect.regen.intensity=9}] obl.effect.regen.interval 40
scoreboard players set @s[scores={obl.effect.regen.intensity=10}] obl.effect.regen.interval 20
# scoreboard players remove @s[scores={obl.effect.regen.count=1..}] obl.effect.regen.count


###   Р Е Г Е Н
## Пополняем ХП в зависимости от силы регенерации.
# Копируем силу регенерации в кол-во ХП для пополнения
scoreboard players operation #heal_by obl = @s obl.effect.regen.potency
# Пополняем ХП
function obl:effect/regen/apply_heal
## Спецэффекты
execute if entity @s[tag=obl.temp.from_regen] run playsound minecraft:item.bottle.fill player @a ~ ~ ~ 0.7 2
execute if entity @s[tag=obl.temp.from_regen] anchored eyes positioned ^ ^ ^ run particle minecraft:heart ~ ~.5 ~ 0 0 0 0 1
tag @s remove obl.temp.from_regen

###   К О Н Е Ц
# execute if score @s obl.effect.regen.count matches 0 run function obl:effect/regen/end