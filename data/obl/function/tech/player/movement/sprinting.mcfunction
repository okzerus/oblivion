tag @s add obl.sprinting

## Отладка
execute if entity @s[tag=obl.debug.movement,tag=obl.sprinting,tag=!obl.mid_air] run say Бегу

## Под эффектом кровотечения
scoreboard players remove @s[tag=obl.effect.bleed,predicate=!obl:is.sneaking] obl.effect.bleed.interval 2

# function oblivion:tech/unusual/effects.sprinting