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
## Пепелище (Scorchfield)
execute if score @s[tag=!obl.effect.scorchfield] obl.effect.scorchfield.count matches 1.. run function obl:effect/scorchfield/inflict
execute if entity @s[tag=obl.effect.scorchfield] run function obl:effect/scorchfield/tick
## Ожог (Scorch)
execute if score @s[tag=!obl.effect.scorch] obl.effect.scorch.tick matches 1.. run function obl:effect/scorch/inflict
execute if entity @s[tag=obl.effect.scorch] run function obl:effect/scorch/tick




#################################################################################################################################################################

###   К О Н Е Ц
## ОЧИСТКА
execute unless score @s obl.effect.scorchfield.count matches 100.. run tag @s remove obl.scorch_immune
execute unless score @s obl.effect.scorchfield.count matches 1.. run tag @s remove obl.effect.scorchfield