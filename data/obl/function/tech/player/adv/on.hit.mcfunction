# Из достижения tech/on.hit

###   Д Е Т Е К Т
## Избегаем повторного выполнения (при разящих атаках) с помощью obl.temp.success_hit (убирается следующим же тиком в on_player.1t)
execute if entity @s[tag=obl.temp.success_hit] run advancement revoke @s only obl:tech/on.hit
## Временный тег на игрока кто получил достижение, затем находим ближайшую сущность которая получила урон и тегаем её obl.temp.hit
## (надо будет потом поменять на более стабильный метод)
tag @s add obl.temp.caller
tag @n[type=#obl:all_mobs,distance=..5,tag=!obl.temp.caller,nbt={HurtTime:10s}] add obl.temp.hit
tag @e[type=#obl:all_mobs,distance=..7,tag=!obl.temp.caller,nbt={HurtTime:10s}] add obl.temp.rest



###   У З Н А Ё М   У Р О Н
## В БУДУЩЕМ ПОМЕНЯТЬ НА МЕТОД С OBJECTIVE minecraft.custom:minecraft.damage_dealt
## Сохранить значение ХП до хита как Старое значение.
execute as @n[type=#obl:all_mobs,tag=obl.temp.hit] run scoreboard players operation @s obl.health_old = @s obl.health
# Дебаг:
tellraw @s[tag=obl.debug] [{"text":"Было: "},{"score":{"name":"@n[type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health_old"}},{"text":" ХП."}]
## Обновить значение ХП используя NBT сущности.
execute as @n[type=#obl:all_mobs,tag=obl.temp.hit] store result score @s obl.health run data get entity @s Health
# Дебаг:
tellraw @s[tag=obl.debug] [{"text":"Стало: "},{"score":{"name":"@n[type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health"}},{"text":" ХП."}]
## Просчитать кол-во полученного урона в функции tech/calc.damage_taken
execute as @n[type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health < @s obl.health_old run function obl:tech/calc.damage_taken
execute as @n[type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health = @s obl.health_old run scoreboard players set @s obl.damage_taken 0
# Дебаг:
tellraw @s[tag=obl.debug] [{"text":"Нанесено урона: "},{"score":{"name":"@n[type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.damage_taken"}}]



###   Ф У Н К Ц И И
## Если нашли сущность получившую урон
# Вводим игрока и задетые сущности в режим боя
scoreboard players operation #id_transfer obl = @s obl.id
function obl:tech/combat/enter
execute as @e[type=#obl:all_mobs,tag=obl.temp.rest] run function obl:tech/combat/enter
# Проверяем используемое оружие
execute unless score @s obl.hit_cooldown matches 1.. run function obl:item/weapon/on.hit
# Под эффектом кровотечения -> снижаем интервал
scoreboard players remove @e[type=#obl:all_mobs,tag=obl.temp.hit,tag=obl.effect.bleed] obl.effect.bleed.interval 15

###   О Т К А Т   Х И Т А
## Базовое КД в 5 тиков для того чтобы избежать ЛКМ спам игроком для быстрой активации способностей оружия активирующихся при хите. 
## Тикает вниз в on_player.1t, кастомный КД применяется в item/weapon/on.hit 
execute unless entity @s[tag=obl.temp.custom_hit_cooldown] run scoreboard players set @s obl.hit_cooldown 5
tag @s remove obl.temp.custom_hit_cooldown


###   К О Н Е Ц
## Убираемся за собой
tag @s remove obl.temp.caller
tag @s remove obl.temp.combat.hit
tag @s add obl.temp.success_hit
tag @e[type=#obl:all_mobs] remove obl.temp.hit
advancement revoke @s only obl:tech/on.hit