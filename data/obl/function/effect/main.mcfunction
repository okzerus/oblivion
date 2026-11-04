#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

# Из on.mobs.1t.mcfunction



###   Б А Ф Ф Ы
## Пепелище
execute if score @s[tag=!obl.effect.scorchfield] obl.effect.scorchfield.count matches 1.. run function obl:effect/scorchfield/inflict
execute if entity @s[tag=obl.effect.scorchfield] run function obl:effect/scorchfield/tick
## Регенерация
execute if entity @s[tag=obl.effect.regen] run function obl:effect/regen/tick

###   Д Е Б А Ф Ф Ы
## Ожог
execute if score @s[tag=!obl.effect.scorch] obl.effect.scorch.tick matches 1.. run function obl:effect/scorch/inflict
execute if entity @s[tag=obl.effect.scorch] run function obl:effect/scorch/tick
## Кровотечение
execute if score @s[tag=!obl.effect.bleed] obl.effect.bleed.tick matches 1.. run function obl:effect/bleed/inflict
execute if entity @s[tag=obl.effect.bleed] run function obl:effect/bleed/tick
## Оглушение
execute if score @s[tag=!obl.effect.stun] obl.effect.stun.tick matches 1.. run function obl:effect/stun/inflict
execute if entity @s[tag=obl.effect.stun] run function obl:effect/stun/tick
## Тремор
execute if entity @s[tag=obl.effect.tremor] run function obl:effect/tremor/tick
execute if entity @s[tag=obl.effect.tremor_burst] run function obl:effect/tremor/burst/tick
## Гнев (Rage)
execute if entity @s[tag=obl.effect.enraged] run function obl:effect/rage/tick




#################################################################################################################################################################

###   К О Н Е Ц
## ОЧИСТКА
execute unless score @s obl.effect.scorchfield.count matches 100.. run tag @s remove obl.scorch_immune
execute unless score @s obl.effect.scorchfield.count matches 1.. run tag @s remove obl.effect.scorchfield