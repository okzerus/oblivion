###   Р Е Й К А С Т   П О   В З Г Л Я Д У   ( м а к с .   5   б л о к о в )
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^1 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^2 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^3 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^4 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^5 unless block ~ ~ ~ #obl:non_solid run function obl:tech/parrying/fall/explode

## Блок не найден за 5 блоков — фейковый взрыв в воздухе на конце рейкаста
execute unless entity @s[tag=obl.temp.fall_hit] positioned ^ ^ ^5 run function obl:tech/parrying/fall/explode.fake

tag @s remove obl.temp.fall_hit
