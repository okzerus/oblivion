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
## КОМАНДЫ НА ИГРОКЕ
execute unless entity @s[tag=obl.first_join] run function obl:tech/player/first_join/init
scoreboard players operation #id.temp obl.id = @s obl.id

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

###   П А Р И Р О В А Н И Е
## КД
#execute if score @s obl.parry.cd matches 1 run function oblivion:tech/parrying/ready
#execute if score @s obl.parry.cd matches 1.. run scoreboard players remove @s obl.parry.cd 1
## ОБНАРУЖЕНИЕ БЛОКИРОВАНИЯ ЩИТОМ
#execute if score @s obl.shield_cleanup matches 1.. run function oblivion:tech/parrying/blocking.end
#execute if score @s obl.shield_using matches 1.. run scoreboard players add @s obl.shield_cleanup 1
## ПРОВАЛ ПАРИРОВАНИЯ
#execute if entity @s[tag=obl.parry_success] run scoreboard players add @s obl.parry.tick 1
#execute if score @s[tag=obl.parry_success.direct] obl.parry.tick matches 7.. run function oblivion:tech/parrying/direct/fail
#execute if score @s[tag=obl.parry_success.projectile] obl.parry.tick matches 20.. run function oblivion:tech/parrying/projectile/fail
## БАФФЫ
#execute if entity @s[tag=obl.empowered.parry] run scoreboard players remove @s obl.parry.empower_tick 1
#execute if score @s[tag=obl.empowered.parry.direct] obl.parry.empower_tick matches 0 run function oblivion:tech/parrying/direct/buff.end
#execute if score @s[tag=obl.empowered.parry.projectile] obl.parry.empower_tick matches 0 run function oblivion:tech/parrying/projectile/buff.end
## ЗВУК
#execute if entity @s[tag=obl.parry.sound_pitch] run scoreboard players remove @s obl.parry.after_tick 1
#execute if score @s[tag=obl.parry.sound_pitch] obl.parry.after_tick matches 0 run function oblivion:tech/parrying/reset.sound_pitch
## ДР.
#execute if entity @s[tag=obl.just_parried_fucking_lightning] run particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 4 5
#execute if score @s obl.parry.spam_cd matches 1.. run scoreboard players remove @s obl.parry.spam_cd 1
#execute if score @s obl.parry.spam_cd matches 0 run function oblivion:tech/parrying/spam.remove

#################################################################################################################################################################





###   Т И К   Ж И З Н И (?)

###   Х О Д Ь Б А   /   Б Е Г   /   П А Д Е Н И Е

###   С М Е Р Т Ь   /   Р Е С П А В Н

###   Э Ф Ф Е К Т Ы

###   Э Ф Ф Е К Т Ы   А Б Л И В О Н А
## Пепелище (Scorchfield)
execute if score @s obl.effect.scorchfield.count matches 1.. run function obl:effect/scorchfield/tick
## ОЧИСТКА
execute unless score @s obl.effect.scorchfield.count matches 100.. run tag @s remove obl.scorch_immune
execute unless score @s obl.effect.scorchfield.count matches 1.. run tag @s remove obl.effect.scorchfield

###   Р А З Н О Е
execute if entity @s[tag=obl.debug] run function obl:cmd/debug/restore_all_cd

#################################################################################################################################################################

###   . . .