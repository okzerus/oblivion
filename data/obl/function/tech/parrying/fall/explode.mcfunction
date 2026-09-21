###   С П Е Ц Э Ф Ф Е К Т Ы
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1

###   Р А З М Е Р   В З Р Ы В А   П О   В Ы С О Т Е   П А Д Е Н И Я
execute if score @s obl.parry.fall_count matches 10..32 run function obl:tech/parrying/fall/explosion/radius_1
execute if score @s obl.parry.fall_count matches 33..64 run function obl:tech/parrying/fall/explosion/radius_2
execute if score @s obl.parry.fall_count matches 65..128 run function obl:tech/parrying/fall/explosion/radius_3
execute if score @s obl.parry.fall_count matches 129.. run function obl:tech/parrying/fall/explosion/radius_4
