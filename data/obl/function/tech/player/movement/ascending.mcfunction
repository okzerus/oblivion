tag @s add obl.ascending

## Отладка:
execute if entity @s[tag=obl.debug,tag=!obl.moving,tag=!obl.sprinting] run say Взлетаю
execute if entity @s[tag=obl.debug,tag=obl.moving] run say Иду и взлетаю
execute if entity @s[tag=obl.debug,tag=obl.sprinting] run say Бегу и взлетаю