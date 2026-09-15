## Ставим жидкость в зависимсоти от типа ведра
# Вода
execute if entity @s[tag=obl.item.water_bucket] run setblock ~ ~ ~ water destroy
execute if entity @s[tag=obl.item.water_bucket] run playsound minecraft:item.bucket.empty hostile @a
# Лава
execute if entity @s[tag=obl.item.lava_bucket] run setblock ~ ~ ~ lava destroy
execute if entity @s[tag=obl.item.lava_bucket] run playsound minecraft:item.bucket.empty_lava hostile @a

## Спавним слегка смещённое пустое ведро, чтобы жидкость смыла его в сторону парировавшего для удобного подбора
# Находим парировавшего через айди
scoreboard players operation #id.temp obl.id = @s obl.id
tag @p[predicate=obl:matching_score] add obl.temp.owner
execute at @s align xyz positioned ~.5 ~ ~.5 facing entity @p[tag=obl.temp.owner] eyes rotated ~ 0 run summon item ^ ^ ^.55 {Item:{id:"minecraft:bucket",Count:1b},Tags:["obl.glow_berried"],Glowing:1b}
scoreboard players set @e[type=item,limit=1,sort=nearest,tag=obl.glow_berried] obl.glowing.cd 140

## Очистка
kill @s
tag @a remove obl.temp.owner