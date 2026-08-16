#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

# Из tick.mcfunction
# Выполнение функций каждый тик, на каждого игрока.

###   П Е Р В Ы Й   З А Х О Д

###   N B T   И Г Р О К А   В   Х Р А Н И Л И Щ Е
# надеюсь не понадобится


#################################################################################################################################################################

###   О Р У Ж Е Й Н А Я   З А Б В Е Н И Я

## КУЛДАУН ОРУЖИЯ
# Анти-ЛКМ-спам КД
execute if score @s obl.hit_cooldown matches 1.. run scoreboard players remove @s obl.hit_cooldown 1
# Способности "Проблеск Зари"
execute if score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:item/weapon/crack_of_dawn/ability/cd

## ИСПОЛЬЗОВАНИЕ ОРУЖИЯ
# Удерживание ПКМ
execute if entity @s[tag=!obl.holding_rmb,scores={obl.holding_rmb=1..}] run function obl:item/rmb_cancel
tag @s remove obl.holding_rmb

#################################################################################################################################################################

###   Т И К   Ж И З Н И (?)

###   Х О Д Ь Б А   /   Б Е Г   /   П А Д Е Н И Е

###   С М Е Р Т Ь   /   Р Е С П А В Н

###   Э Ф Ф Е К Т Ы

###   Э Ф Ф Е К Т Ы   А Б Л И В О Н А
## Пепелище (Scorchfield)
execute if score @s obl.effect.buff.scorchfield.count matches 1.. run function obl:tech/effect/buff/scorchfield/tick
## ОЧИСТКА
execute unless score @s obl.effect.buff.scorchfield.count matches 100.. run tag @s remove obl.scorch_immune
execute unless score @s obl.effect.buff.scorchfield.count matches 1.. run tag @s remove obl.effect.buff.scorchfield

###   Р А З Н О Е
execute if entity @s[tag=obl.debug] run function obl:cmd/debug/restore_all_cd

#################################################################################################################################################################

###   . . .