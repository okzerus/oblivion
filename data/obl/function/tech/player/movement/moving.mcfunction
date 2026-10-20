tag @s add obl.moving

## Отладка:
execute if entity @s[tag=obl.debug.movement,tag=!obl.mid_air] run say Иду

## Под эффектом кровотечения
scoreboard players remove @s[tag=obl.effect.bleed,predicate=!obl:is.sneaking] obl.effect.bleed.interval 1

# function oblivion:tech/unusual/effects.walking