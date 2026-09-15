## Дополнительная регулировка траектории в зависимости от движения парирующего:
# Ходьба
execute if entity @p[tag=obl.temp.reflecting,tag=!obl.mid_air,tag=obl.moving,tag=!obl.sprinting] run tp @s ^ ^ ^.2
# Бег
execute if entity @p[tag=obl.temp.reflecting,tag=!obl.mid_air,tag=obl.sprinting] run tp @s ^ ^ ^.5
# Взлёт
execute if entity @p[tag=obl.temp.reflecting,tag=obl.ascending,tag=!obl.moving,tag=!obl.sprinting] run tp @s ^ ^.03 ^.2
# Ходьба+Взлёт
execute if entity @p[tag=obl.temp.reflecting,tag=obl.ascending,tag=obl.moving,tag=!obl.sprinting] run tp @s ^ ^.05 ^.7
# Бег+Взлёт
execute if entity @p[tag=obl.temp.reflecting,tag=obl.ascending,tag=obl.sprinting] run tp @s ^ ^.07 ^1
# Падение
execute if entity @p[tag=obl.temp.reflecting,tag=obl.falling] run tp @s ^ ^-.03 ^-.5

## Отладка:
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.moving,tag=!obl.sprinting,tag=!obl.mid_air] run say Снаряд был парирован при обычной ходьбе
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.sprinting,tag=!obl.mid_air] run say Снаряд был парирован при обычном беге
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.ascending,tag=!obl.moving,tag=!obl.sprinting] run say Снаряд был парирован во время взлёта
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.ascending,tag=obl.moving,tag=!obl.sprinting] run say Снаряд был парирован при ходьбе во время взлёта
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.ascending,tag=obl.sprinting] run say Снаряд был парирован при беге во время взлёта
execute if entity @p[tag=obl.debug,tag=obl.temp.reflecting,tag=obl.falling] as @n[type=marker,tag=obl.temp.adjust_trajectory] run say Снаряд был парирован при падении

data modify storage obl:temp vector set from entity @s Pos
kill