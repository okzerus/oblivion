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

###   Х О Д Ь Б А   /   Б Е Г   /   П А Д Е Н И Е

## Очистка перед командами
tag @s remove obl.mid_air
tag @s remove obl.on_ground
tag @s remove obl.walking
tag @s remove obl.sprinting
tag @s remove obl.sneaking
## Если игрок в воздухе/жидкости, даём тег
execute unless predicate obl:on.ground run tag @s add obl.mid_air
## Если игрок стоит на земле, даём тег
execute unless predicate obl:on.ground run tag @s add obl.on_ground
## Если игрок не в воздухе и получает счёт ходьбы, выполняем функцию при хождении
execute if score @s[tag=!obl.mid_air] obl.walking matches 1.. run function obl:tech/player/is.walking
## Если игрок не в воздухе и получает счёт ходьбы, выполняем функцию при беге
execute if score @s[tag=!obl.mid_air] obl.sprinting matches 1.. run function obl:tech/player/is.sprinting
## Если игрок в воздухе, но не стоит на не-твёрдых блоках, выполняем функцию при падении
execute if entity @s[tag=obl.mid_air] unless predicate obl:stepping_on.non_solid run function obl:tech/player/on_ground
## Если игрок крадётся, выполняем функцию
execute if predicate obl:is.sneaking run function obl:tech/player/sneaking
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

#################################################################################################################################################################

###   П А Р И Р О В А Н И Е
## КД
execute if score @s obl.parry.cd matches 1 run function obl:tech/parrying/ready
execute if score @s obl.parry.cd matches 1.. run scoreboard players remove @s obl.parry.cd 1
## ПРОВАЛ ПАРИРОВАНИЯ
execute if entity @s[tag=obl.parry_success] run scoreboard players add @s obl.parry.tick 1
execute if score @s[tag=obl.parry_success.direct] obl.parry.tick matches 7.. run function obl:tech/parrying/direct/fail
execute if score @s[tag=obl.parry_success.projectile] obl.parry.tick matches 20.. run function obl:tech/parrying/projectile/fail
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