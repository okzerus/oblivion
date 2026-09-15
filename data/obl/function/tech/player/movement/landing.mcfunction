tag @s add obl.on_ground
tag @s remove obl.mid_air

## Отладка:
execute if entity @s[tag=obl.debug,tag=!obl.jumped] run say Приземлился
execute if entity @s[tag=obl.debug,tag=obl.jumped] run say Приземлился после прыжка

tag @s remove obl.jumped

# function oblivion:tech/unusual/effects.on_ground