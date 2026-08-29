###   Ф У Н К Ц И Я
## Дублируем айди тегнутого снаряда шалкера в новосозданный
scoreboard players operation @s obl.id = @e[type=shulker_bullet,limit=1,sort=nearest,tag=obl.temp.reflecting_shulker_bullet] obl.id
## Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id

## Хз зачем это
data merge entity @s {Steps:1}
## Модифиируем новосозданный снаряд: Ставим его цель на шалкера-владельца ранее парированного снаряда.
data modify entity @s Target set from entity @e[type=shulker_bullet,tag=obl.temp.reflecting_shulker_bullet,predicate=obl:matching_score,limit=1] Owner
## Модифиируем новосозданный снаряд: Ставим его владельца на игрока, который ранее парировал снаряд.
data modify entity @s Owner set from entity @e[type=#obl:all_mobs,tag=obl.temp.reflecting,limit=1,sort=nearest] UUID

## Даём тег на успешно парированный снаряд
tag @s add obl.projectile.reflected
## Убиваем ранее парированный снаряд шалкера
kill @e[type=shulker_bullet,tag=obl.temp.reflecting_shulker_bullet,predicate=obl:matching_score]
## Хз зачем это
data modify entity @s Motion set from storage obl:temp vector