###   Ф У Н К Ц И Я
## Оглушение
execute store result score #current obl run data get entity @s Health 100
execute store result score #max obl run attribute @s minecraft:max_health get 100
scoreboard players operation #current obl *= #100 obl.const
scoreboard players operation #current obl /= #max obl
tag @s add obl.temp.from_burst
execute if score #current obl <= @s obl.effect.tremor.count run function obl:effect/stun/inflict
tag @s remove obl.temp.from_burst
## Спецэффекты
particle minecraft:flame ~ ~.5 ~ 0 0 0 0.5 200
particle minecraft:smoke ~ ~.5 ~ 0 0 0 0.5 100
particle minecraft:large_smoke ~ ~.5 ~ 0 0 0 0.1 100
particle minecraft:lava ~ ~.5 ~ 0.3 0 0.3 0.5 100
particle minecraft:flash{color:[1.0,0.7,0.0,1.0]} ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.9
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1.5 0.6
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1.5 0.7
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 1.5 0.6
playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 1.5 0.7
playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.7
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.5
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.8
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.7
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 2
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 1.8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 0.5



###   У Р О Н
## Считаем сколько урона получит цель.
# Копируем значение тремора на цели
scoreboard players operation #to_damage obl = @s obl.effect.tremor.count
# Умножаем значение на уровень ожога на цели
scoreboard players operation #to_damage obl *= @s obl.effect.scorch.potency
# Копируем значение в хранилище даты
execute store result storage obl:damage value int 1 run scoreboard players get #to_damage obl
## Наносим урон
function obl:effect/scorch/macro with storage obl:damage
## Пепелище
# Поддерживаем эффект для ближайших игроков
scoreboard players set @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.decay 300
# Добавляет счёт для ближайших игроков
scoreboard players operation @a[tag=obl.effect.scorchfield,distance=..15] obl.effect.scorchfield.count += #to_damage obl

## Отнимаем счётчик тремора
scoreboard players operation #tremor_removed obl = @s obl.effect.tremor.count
scoreboard players set @s obl.effect.tremor.count 0
execute store result storage obl:temp x int 1 run scoreboard players get #tremor_removed obl
execute store result storage obl:temp y int 1 run scoreboard players get @s obl.effect.tremor.count
scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=text_display,tag=obl.announce.tremor,predicate=obl:matching_score]
tag @s add obl.temp.negative
execute anchored eyes positioned ^ ^ ^ positioned ~ ~.5 ~ run function obl:effect/tremor/text_display with storage obl:temp
tag @s remove obl.temp.negative
scoreboard players operation @e[type=text_display,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=text_display] remove obl.temp.set_id
scoreboard players set #no_announcement obl 1
function obl:effect/tremor/end