###   I D   С Н А Р Я Д А
## Ставим временный тег на источник снаряда, если таковой существует
execute on origin run tag @s add obl.temp.projectile_owner
## Если такового не существует, добавляем тег на отсутствие источника
execute unless entity @e[type=#obl:all_mobs,tag=obl.temp.projectile_owner] run tag @s add obl.projectile.no_owner
## Устанавливаем на снаряд такой же ID как и у его источника
scoreboard players operation @s[tag=!obl.projectile.no_owner] obl.id = @e[type=#obl:all_mobs,tag=obl.temp.projectile_owner,limit=1] obl.id



###   Ф У Н К Ц И И
## Добавляем тег, чтобы эта функция не выполнялась повторно
tag @s add obl.projectile.init
## Если источник - игрок, добавляем отдельный тег
execute if entity @e[tag=obl.temp.projectile_owner,type=player] run tag @s add obl.projectile.player_owner
## Если источник - всполох, добавляем отдельный тег
execute if entity @e[tag=obl.temp.projectile_owner,type=blaze] run tag @s add obl.projectile.blaze_owner
## Если снаряд - Стрела помощи, убираем её урон
# execute if data entity @s {Color:15695597} run tag @s add obl.arrow.arrow_of_support
# execute if entity @s[tag=obl.arrow.arrow_of_support] run data merge entity @s {damage:-100.0d}



###   О Ч И С Т К А
tag @e[type=#obl:all_mobs] remove obl.temp.projectile_owner