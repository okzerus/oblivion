tag @s add obl.ascending

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.moving,tag=!obl.sprinting] run say Взлетаю
execute if entity @s[tag=obl.debug.movement,tag=obl.moving] run say Иду и взлетаю
execute if entity @s[tag=obl.debug.movement,tag=obl.sprinting] run say Бегу и взлетаю

scoreboard players set @s obl.falling_distance 0