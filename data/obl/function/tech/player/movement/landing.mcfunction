tag @s add obl.on_ground
tag @s remove obl.mid_air

## Парирование падения
attribute @s[tag=obl.parry.fall_safe] minecraft:safe_fall_distance modifier remove obl.parrying
tag @s remove obl.parry.fall_safe

## Использование "Рассечения" Крылатого Тигра
execute if entity @s[tag=obl.weapon.winged_tiger.performing_tanglecleaver] run function obl:item/weapon/winged_tiger/ability/tanglecleaver/land

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.jumped] run say Приземлился
execute if entity @s[tag=obl.debug.movement,tag=obl.jumped] run say Приземлился после прыжка

tag @s remove obl.jumped
scoreboard players set @s obl.falling_distance 0