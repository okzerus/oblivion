###   Ф У Н К Ц И Я
scoreboard players remove @s obl.effect.shin.tick 1
execute if score @s obl.effect.shin.tick matches 0 run function obl:effect/shin/end


###   Ч А С Т И Ц Ы
particle minecraft:wax_off ~ ~.5 ~ 0.3 0.6 0.3 0 3
particle dust{color:[1.0,1.0,0],scale:1} ~ ~.5 ~ 0.3 0.6 0.43 0 3