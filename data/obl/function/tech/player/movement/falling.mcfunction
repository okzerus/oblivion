tag @s add obl.falling
scoreboard players add @s[tag=!obl.parry_success.fall] obl.falling_distance 1

## Парирование падения
execute if score @s obl.falling_distance matches 8.. run function obl:tech/parrying/fall/check

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.moving,tag=!obl.sprinting] run say Падаю
execute if entity @s[tag=obl.debug.movement,tag=obl.moving] run say Иду и падаю
execute if entity @s[tag=obl.debug.movement,tag=obl.sprinting] run say Бегу и падаю