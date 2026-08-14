# Вызывается из data/obl/advancement/tech/on.hit



###   О Б Н А Р У Ж Е Н И Е
## Временно ставит тэг на игрока который вызвал on.hit, после чего ищет ближайшую сущность получившую урон в близком радиусе, чтобы поставить тег obl.temp.hit на неё.  
## (возможно потребуется заменить на более стабильный tech)
tag @s add obl.temp.caller
execute unless entity @s[tag=obl.temp.success_hit] run tag @e[type=#obl:all_mobs,distance=..7,tag=!obl.temp.caller,limit=1,sort=nearest,nbt={HurtTime:10s}] add obl.temp.hit
## obl.temp.success_hit чтобы избежать активации on.hit функции несколько раз при атаке с размахом. Убирается на следующем тике в on_player.1t



###   В Ы Ч И С Л Е Н И Е   У Р О Н А
## Сохраняет значение ХП до удара как Старое число.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] run scoreboard players operation @s obl.health_old = @s obl.health
# Отладка:
tellraw @s[tag=obl.debug] [{"text":"Было: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health_old"}},{"text":" ХП."}]
## Обновить значение ХП из NBT сущности.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] store result score @s obl.health run data get entity @s Health
# Отладка:
tellraw @s[tag=obl.debug] [{"text":"Стало: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health"}},{"text":" ХП."}]
## Вычисляет количество урона которое получила сущность.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health < @s obl.health_old run function obl:tech/calc.damage_taken
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health = @s obl.health_old run scoreboard players set @s obl.damage_taken 0
# Отладка:
tellraw @s[tag=obl.debug] [{"text":"Нанесено урона: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.damage_taken"}}]



###   Ф У Н К Ц И Я
# Найдена сущность получавшая урон? Переходит к обнаружению оружия.
execute if entity @s[tag=!obl.temp.success_hit,tag=!obl.hit_cooldown] run function obl:item/weapon/on.hit


###   К У Л Д А У Н   У Д А Р А
# Базовый кулдаун на 5 тиков, чтобы предотвратить спам способностями оружия, срабатывающими при попадании. Спадает в on_player.1t, кастомный кулдаун применяется в item/weapon/on.hit 
execute unless entity @s[tag=obl.temp.custom_hit_cooldown] run scoreboard players set @s obl.hit_cooldown 5
tag @s remove obl.temp.custom_hit_cooldown


###   К О Н Е Ц
# Очистка
tag @s remove obl.temp.caller
tag @s add obl.temp.success_hit
tag @e[type=#obl:all_mobs] remove obl.temp.hit
advancement revoke @s only obl:tech/on.hit