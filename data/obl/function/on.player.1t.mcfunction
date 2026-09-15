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

###   Р Е К О Н Н Е К Т
## ПРОВЕРКА
# Пихаем ранее сохранённое серверное время игрока в счёт для проверки
scoreboard players operation @s obl.server_time.check = @s obl.server_time
# Бёрм число настоящего серверного время и отнимаем его из счёта для проверки
scoreboard players operation @s obl.server_time.check -= #server obl.server_time
# Если разница 20 или больше (1 секунда), игрок перезашёл
execute if score @s obl.server_time.check matches 20.. run function obl:tech/player/reconnect
## СИНХРОНИЗАЦИЯ
scoreboard players operation @s obl.server_time = #server obl.server_time

###   N B T   И Г Р О К А   В   Х Р А Н И Л И Щ Е
# надеюсь не понадобится


#################################################################################################################################################################

###   П Р О В Е Р К А   Д В И Ж Е Н И Я

## Если игрок прыгнул, выполняем функцию при прыжке
execute if score @s obl.jumping matches 1.. run function obl:tech/player/movement/jumping
## Если игрок был в воздухе и приземлился, выполняем функцию при приземлении
execute if entity @s[tag=obl.mid_air,predicate=obl:on.ground] run function obl:tech/player/movement/landing
## Если игрок оторвался от земли, выполняем функцию
execute if entity @s[tag=obl.on_ground,predicate=!obl:on.ground] run function obl:tech/player/movement/left_ground

## Очистка перед проверкой
tag @s remove obl.moving
tag @s remove obl.sprinting
tag @s remove obl.ascending
tag @s remove obl.falling
tag @s remove obl.sneaking

## Если игрок крадётся, выполняем функцию
execute if predicate obl:is.sneaking run function obl:tech/player/sneaking
## Если игрок бежит, выполняем функцию при беге
execute if predicate obl:is.sprinting run function obl:tech/player/movement/sprinting
## Если игрок двигается, но не бежит, выполняем функцию при движении
execute if predicate obl:is.moving unless predicate obl:is.sprinting run function obl:tech/player/movement/moving
## Если игрок в воздухе, и не имеет дистанции падения, выполняем функцию при взлёте
execute if entity @s[tag=obl.mid_air,predicate=!obl:is.falling] run function obl:tech/player/movement/ascending
## Если игрок в воздухе, и имеет дистанцию падения, выполняем функцию при падении
execute if entity @s[tag=obl.mid_air,predicate=obl:is.falling] run function obl:tech/player/movement/falling

### нереализовано
## Если игрок крался и перестал, выполняем функцию
#execute if score @s obl.player_sneaking matches 1.. unless predicate obl:is.sneaking run function obl:tech/player/on.player_sneaking.end
#execute if score @s obl.double_sneak.time matches 1.. run scoreboard players remove @s obl.double_sneak.time 1



###   О Р У Ж Е Й Н А Я   З А Б В Е Н И Я

## ТИК ОРУЖИЯ 
# Чревоугодие 
execute if score @s obl.weapon.gluttony.decay matches 1.. run scoreboard players remove @s obl.weapon.gluttony.decay 1
execute if score @s obl.weapon.gluttony.decay matches 1 if score @s obl.weapon.gluttony.combo matches 1.. run scoreboard players set @s obl.weapon.gluttony.combo 0
execute if predicate obl:holding/gluttony run function obl:item/weapon/gluttony/tick

# Оскал Убийцы
execute if score @s obl.weapon.fanged_assassin.autumn_red matches 1.. run function obl:item/weapon/fanged_assassin/ability/autumn_red/tick
execute if predicate obl:holding/fanged_assassin run function obl:item/weapon/fanged_assassin/ability/accelerando/tick
execute unless score @s obl.weapon.fanged_assassin.accelerando matches 0 unless predicate obl:holding/fanged_assassin run scoreboard players set @s obl.weapon.fanged_assassin.accelerando 0
execute if predicate obl:holding/fanged_assassin if score @s obl.weapon.fanged_assassin.autumn_red matches 0 if entity @s[tag=obl.weapon.fanged_assassin.fox_dance.autumn_red] run function obl:item/weapon/fanged_assassin/ability/autumn_red/revert

## КУЛДАУН ОРУЖИЯ
# Анти-ЛКМ-спам КД
execute if score @s obl.hit_cooldown matches 1.. run scoreboard players remove @s obl.hit_cooldown 1
# Способности "Проблеск Зари"
execute if score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:item/weapon/crack_of_dawn/ability/cd
# Способности "Оскал Убийцы"
execute if score @s obl.weapon.fanged_assassin.fox_dance.cd matches 1.. run function obl:item/weapon/fanged_assassin/ability/fox_dance/cd
execute if score @s obl.weapon.fanged_assassin.autumn_red.cd matches 1.. run function obl:item/weapon/fanged_assassin/ability/autumn_red/cd

## ИСПОЛЬЗОВАНИЕ ОРУЖИЯ
# Удерживание ПКМ детектится через ачивку; функция по пути obl:tech/player/adv/on.rmb.mcfunction
# Отмена ПКМ
execute if entity @s[tag=!obl.holding_rmb,scores={obl.holding_rmb=1..}] run function obl:item/rmb_cancel
tag @s remove obl.holding_rmb
## Очистка
execute as @e[tag=obl.temp.success_hit] run tag @s remove obl.temp.success_hit

## ИСПОЛЬЗОВАНИЕ ЩИТА
# Удерживание ПКМ детектится через ачивку; функция по пути obl:tech/player/adv/using_shield.mcfunction
# Отмена ПКМ
execute if entity @s[tag=!obl.using_shield,scores={obl.using_shield=1..}] run function obl:item/shield_cancel
tag @s remove obl.using_shield
# Добавляем описание с кадром парирования
execute if predicate obl:holding/vanilla_shield run item modify entity @s weapon.mainhand obl:shield
execute if predicate obl:holding/vanilla_shield_off run item modify entity @s weapon.offhand obl:shield

#################################################################################################################################################################

###   П А Р И Р О В А Н И Е
## КД
execute if score @s obl.parry.cd matches 1 run function obl:tech/parrying/ready
execute if score @s obl.parry.cd matches 1.. run scoreboard players remove @s obl.parry.cd 1
## ПРОВАЛ ПАРИРОВАНИЯ
execute if entity @s[tag=obl.parry_success] run scoreboard players add @s obl.parry.tick 1
execute if score @s[tag=obl.parry_success.direct] obl.parry.tick matches 7.. run function obl:tech/parrying/direct/fail
execute if score @s[tag=obl.parry_success.projectile] obl.parry.tick matches 20.. run function obl:tech/parrying/projectile/fail
## ОТСУТСТВИЕ ЦЕЛИ
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
execute if entity @s[tag=obl.parry_success,tag=!obl.just_parried_fucking_lightning] unless entity @n[tag=obl.parried,predicate=obl:matching_score.parrying] run function obl:tech/parrying/projectile/fail
## БАФФЫ
#execute if entity @s[tag=obl.empowered.parry] run scoreboard players remove @s obl.parry.empower_tick 1
#execute if score @s[tag=obl.empowered.parry.direct] obl.parry.empower_tick matches 0 run function obl:tech/parrying/direct/buff.end
#execute if score @s[tag=obl.empowered.parry.projectile] obl.parry.empower_tick matches 0 run function obl:tech/parrying/projectile/buff.end
## ЗВУК
#execute if entity @s[tag=obl.parry.sound_pitch] run scoreboard players remove @s obl.parry.after_tick 1
#execute if score @s[tag=obl.parry.sound_pitch] obl.parry.after_tick matches 0 run function obl:tech/parrying/reset.sound_pitch
## ДР.
#execute if entity @s[tag=obl.just_parried_fucking_lightning] run particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 4 5
execute if score @s obl.parry.spam_cd matches 1.. run scoreboard players remove @s obl.parry.spam_cd 1
execute if score @s obl.parry.spam_cd matches 0 run function obl:tech/parrying/spam.remove

#################################################################################################################################################################



execute unless score @s obl.empower.damage_test matches ..0 run function obl:tech/empower/test/damage_test


###   Т И К   Ж И З Н И (?)

###   С М Е Р Т Ь   /   Р Е С П А В Н

###   Э Ф Ф Е К Т Ы

###   Э Ф Ф Е К Т Ы   А Б Л И В О Н А
## Пепелище (Scorchfield)
execute if score @s obl.effect.scorchfield.count matches 1.. run function obl:effect/scorchfield/tick
## ОЧИСТКА
execute unless score @s obl.effect.scorchfield.count matches 100.. run tag @s remove obl.scorch_immune
execute unless score @s obl.effect.scorchfield.count matches 1.. run tag @s remove obl.effect.scorchfield

###   U N U S U A L
## DEFAULT
execute if entity @s[tag=obl.alive,predicate=obl:unusual,predicate=!obl:is.sneaking,tag=!obl.gamemode.spectator] run function obl:tech/unusual/main
## CIRCLING
execute if entity @s[tag=obl.alive,predicate=obl:circling_unusual,predicate=!obl:is.sneaking,tag=!obl.gamemode.spectator] run function obl:tech/unusual/check

###   I T E M   M O D I F Y
execute if predicate obl:holding/wooden_hoe run item modify entity @s weapon.mainhand obl:scythe_wooden
execute if predicate obl:holding/stone_hoe run item modify entity @s weapon.mainhand obl:scythe_stone
execute if predicate obl:holding/iron_hoe run item modify entity @s weapon.mainhand obl:scythe_iron
execute if predicate obl:holding/golden_hoe run item modify entity @s weapon.mainhand obl:scythe_golden
execute if predicate obl:holding/diamond_hoe run item modify entity @s weapon.mainhand obl:scythe_diamond
execute if predicate obl:holding/netherite_hoe run item modify entity @s weapon.mainhand obl:scythe_netherite

###   Р А З Н О Е
execute if entity @s[tag=obl.debug] run function obl:cmd/debug/restore_all_cd

#################################################################################################################################################################

###   . . .