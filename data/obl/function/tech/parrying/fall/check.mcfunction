###   Н А К О П Л Е Н И Е   П А Д Е Н И Я
execute unless entity @s[tag=obl.parry_success.fall] run scoreboard players add @s obl.parry.fall_count 1

###   П Р О В Е Р К А   П А Р И Р О В А Н И Я
# Порог ~10 тиков падения примерно соответствует моменту, с которого падение начало бы наносить реальный урон
execute unless entity @s[tag=obl.parry_success.fall] if score @s obl.parry.fall_count matches 10.. if entity @s[tag=obl.can_parry,x_rotation=80..90] run function obl:tech/parrying/fall/parry
