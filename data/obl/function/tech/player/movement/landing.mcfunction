tag @s add obl.on_ground
tag @s remove obl.mid_air

## Парирование падения
attribute @s[tag=obl.parry.fall_safe] minecraft:safe_fall_distance modifier remove obl.parrying
tag @s remove obl.parry.fall_safe

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.jumped] run say Приземлился
execute if entity @s[tag=obl.debug.movement,tag=obl.jumped] run say Приземлился после прыжка

tag @s remove obl.jumped
scoreboard players set @s obl.falling_distance 0