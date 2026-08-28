# Добавляет айди для спавнера
scoreboard players add #spawner_id.holder obl.spawner.id 1
scoreboard players operation @s obl.spawner.id = #spawner_id.holder obl.spawner.id
scoreboard players set @s obl.spawner.difficulty 0

## Модифицирует спавнер чтобы он спавнил маркеры с соответствующим биомом
#########################################################################################   М О Д И Ф И К А Ц И Я   С П А В Н Е Р А   ###################################################################################################################

## Типовой (generic)
# Зомби
execute if entity @s[type=marker,tag=obl.spawner.generic,tag=obl.spawner.zombie] run data merge block ~ ~ ~ {SpawnData:{entity:{id:armor_stand,Invisible:1b,Invulnerable:1b,CustomName:"Mob Marker",CustomNameVisible:1b,Tags:[obl.spawner.mob_marker,obl.spawner.generic.mob_marker,obl.spawner.new_spawn]}}, SpawnRange:4, SpawnCount:4,MaxNearbyEntities:4,Delay:300}
# Скелет
#abc...

## abc...

#########################################################################################   М О Д И Ф И К А Ц И Я   С П А В Н Е Р А   ###################################################################################################################

# Очистка
tag @s remove obl.spawner.init