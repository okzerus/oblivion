# Добавляет айди для спавнера
scoreboard players add #spawner_id.holder obl.spawner.id 1
scoreboard players operation @s obl.spawner.id = #spawner_id.holder obl.spawner.id
scoreboard players set @s obl.spawner.difficulty 0

## Модифицирует спавнер чтобы он спавнил маркеры с соответствующим биомом
# generic
execute if entity @s[tag=obl.spawner.generic] run data merge block ~ ~ ~ {SpawnData:{entity:{id:armor_stand,Invisible:1b,Invulnerable:1b,CustomName:"Mob Marker",CustomNameVisible:1b,Tags:[obl.spawner.mob_marker,obl.spawner.generic.mob_marker,obl.spawner.new_spawn]}}, SpawnRange:4}

# очистка
tag @s remove obl.spawner.init