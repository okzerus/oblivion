###   С Т А Р Т
## Повреждение щита
tag @s add obl.temp.parry_fail
execute if entity @s[gamemode=!creative,predicate=obl:holding/shield_both] run function obl:tech/parrying/shield_damage
## Откат парирования
# Стандартный откат
scoreboard players set @s obl.parry.cd 50
# Если парированный снаряд был от игрока, время отката утраивается (PvP баланс)
execute if entity @e[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.projectile.player_owner,tag=!obl.temp.same_owner] run scoreboard players set @s obl.parry.cd 150
## Визуальные дебаффы
effect clear @s[tag=obl.custom_slowness] slowness
effect clear @s[tag=obl.custom_blindness] blindness
effect give @s[tag=obl.custom_blindness] blindness 1 0 true
## Взрываем поглощённую молнию на игроке
execute if entity @s[tag=obl.just_parried_fucking_lightning] run function obl:tech/parrying/projectile/list/lightning_bolt.fail
## Спецэффекты
particle minecraft:dust{color:[0.6,0.0,0.0],scale:0.8} ~ ~.5 ~ 0.3 0.6 0.3 0 50
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1.2
playsound minecraft:item.shield.break hostile @a ~ ~ ~ 1 0.8
## Отладка
tellraw @s[tag=obl.debug] [{"text":"Провалил парирование."}]

###   Н А   С Н А Р Я Д Е
# Добавляем тег на сущность для дальнейшего референса
tag @s add obl.temp.failed_parry
# Разморозка снаряда и запуск в сущность, провалившую парирование
scoreboard players operation #id.temp obl.parried_by_id = @s obl.id
execute as @e[type=#obl:parryable,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] at @s run function obl:tech/parrying/projectile/list/fail
# Нереализовано
#execute as @e[type=magma_cube,tag=obl.boss.black_death,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] at @s run function obl:abilities/bosses/black_death/charged_explode
#execute as @e[type=marker,tag=obl.projectile.curses,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] at @s run function obl:tech/projectiles/hit/cursed_beam
#execute as @e[type=marker,tag=obl.projectile.curses.accessory,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] at @s run function obl:tech/projectiles/hit/cursed_beam.accessory
#execute as @e[type=marker,tag=obl.projectile.yamato_sword,tag=obl.projectile.parried,predicate=obl:matching_score.parrying] at @s run function obl:tech/projectiles/hit/yamato_sword

###   О Ч И С Т К А
scoreboard players set @s obl.parry.tick 0
tag @s remove obl.temp.failed_parry
tag @s remove obl.temp.parry_fail
tag @s remove obl.parry_success
tag @s remove obl.parry_success.projectile