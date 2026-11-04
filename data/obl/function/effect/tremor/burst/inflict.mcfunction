###   Ф У Н К Ц И Я
tag @s add obl.effect.tremor_burst
scoreboard players operation @s obl.effect.tremor_burst.tick = @s obl.effect.tremor.count
scoreboard players operation @s obl.effect.tremor_burst.tick *= #three obl.const
## Дебаффы
scoreboard players operation #debuff_strength obl = @s obl.effect.tremor.count
scoreboard players operation #debuff_strength obl /= #two obl.const
execute if score #debuff_strength obl matches ..0 run scoreboard players set #debuff_strength obl 1
execute store result storage obl:temp x double -0.01 run scoreboard players get #debuff_strength obl
function obl:effect/tremor/burst/debuffs with storage obl:temp
## Оглушение
execute store result score #current obl run data get entity @s Health 100
execute store result score #max obl run attribute @s minecraft:max_health get 100
scoreboard players operation #current obl *= #100 obl.const
scoreboard players operation #current obl /= #max obl
tag @s add obl.temp.from_burst
execute if score #current obl <= @s obl.effect.tremor.count run function obl:effect/stun/inflict
tag @s remove obl.temp.from_burst

## Спецэффекты
particle minecraft:firework ~ ~.5 ~ 0 0 0 0.5 200
particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 15 500
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.7
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.5
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.7
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.5

## Отнимаем счётчик тремора
# Если цель была оглушена, забираем весь тремор и отменяем функцию
execute if entity @s[tag=obl.effect.stun] run scoreboard players set #no_annonucement obl 1
execute if entity @s[tag=obl.effect.stun] run return run function obl:effect/tremor/end
# Если цель не была оглушена, забираем половину тремора и оповещаем
scoreboard players operation #tremor_old obl = @s obl.effect.tremor.count
scoreboard players operation @s obl.effect.tremor.count /= #two obl.const
scoreboard players operation #tremor_removed obl = #tremor_old obl
scoreboard players operation #tremor_removed obl -= @s obl.effect.tremor.count
execute store result storage obl:temp x int 1 run scoreboard players get #tremor_removed obl
execute store result storage obl:temp y int 1 run scoreboard players get @s obl.effect.tremor.count
scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=text_display,tag=obl.announce.tremor,predicate=obl:matching_score]
tag @s add obl.temp.negative
execute anchored eyes positioned ^ ^ ^ positioned ~ ~.5 ~ run function obl:effect/tremor/text_display with storage obl:temp
tag @s remove obl.temp.negative
scoreboard players operation @e[type=text_display,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=text_display] remove obl.temp.set_id