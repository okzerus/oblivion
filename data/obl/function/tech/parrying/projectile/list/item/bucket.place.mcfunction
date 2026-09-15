# Ставим жидкость в зависимсоти от типа ведра
execute if entity @s[tag=obl.item.water_bucket] run setblock ~ ~ ~ water destroy
execute if entity @s[tag=obl.item.water_bucket] run playsound minecraft:item.bucket.empty hostile @a
execute if entity @s[tag=obl.item.lava_bucket] run setblock ~ ~ ~ lava destroy
execute if entity @s[tag=obl.item.lava_bucket] run playsound minecraft:item.bucket.empty_lava hostile @a

# Спавним пустое ведро
execute at @s align xyz run summon item ~.5 ~.5 ~.5 {Item:{id:"minecraft:bucket",Count:1b},Tags:["obl.glow_berried"],Glowing:1b}
scoreboard players set @e[type=item,limit=1,sort=nearest,tag=obl.glow_berried] obl.glowing.cd 140

# Удаляем старое ведро с жидкостью
kill @s