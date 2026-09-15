# Сохраняем фитиль динамита в счёт
execute store result score #tnt_fuse obl run data get entity @s fuse
# Выдаём парирующему игроку ачивку за парирование динамита за 1-5 тиков до взрыва
execute if score #tnt_fuse obl matches 1..5 run advancement grant @p[tag=obl.temp.parrying] only obl:advancements/weaponry/shield/additions/tnt.low_fuse

# Выставляем 60 тиков (3 секунды) фитиля при первом парировании
execute unless entity @s[tag=obl.projectile.reflected] run scoreboard players set @s obl.parried_tnt.fuse 60
# Отнимаем 1 тик из счёта каждое последующее парирование
scoreboard players remove @s obl.parried_tnt.fuse 1
# Вставляем модифицированный счёт в фитиль динамита
execute store result entity @s fuse short 1 run scoreboard players get @s obl.parried_tnt.fuse