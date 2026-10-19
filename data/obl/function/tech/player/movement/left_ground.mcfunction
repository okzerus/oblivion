tag @s add obl.mid_air
tag @s remove obl.on_ground

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.jumped] run say Покинул землю
execute if entity @s[tag=obl.debug.movement,tag=obl.jumped] run say Покинул землю после прыжка