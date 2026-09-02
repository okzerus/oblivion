# Добавляет айди для спавнера
scoreboard players add #spawner_id.holder obl.spawner.id 1
scoreboard players operation @s obl.spawner.id = #spawner_id.holder obl.spawner.id
scoreboard players set @s obl.spawner.difficulty 0

# Определяет биом спавнера
execute if biome ~ ~ ~ #minecraft:is_badlands run tag @s add obl.biome.badlands
execute if biome ~ ~ ~ minecraft:dark_forest run tag @s add obl.biome.dark_forest
execute if biome ~ ~ ~ minecraft:desert run tag @s add obl.biome.desert
execute if biome ~ ~ ~ #obl:is_forest run tag @s add obl.biome.forest
execute if biome ~ ~ ~ #obl:is_frozen_ocean run tag @s add obl.biome.frozen_ocean
execute if biome ~ ~ ~ #minecraft:is_jungle run tag @s add obl.biome.jungle
execute if biome ~ ~ ~ #obl:is_mountains run tag @s add obl.biome.mountains
execute if biome ~ ~ ~ #obl:is_ocean run tag @s add obl.biome.ocean
execute if biome ~ ~ ~ #obl:is_plains run tag @s add obl.biome.plains
execute if biome ~ ~ ~ #minecraft:is_savanna run tag @s add obl.biome.savanna
execute if biome ~ ~ ~ #obl:is_swamp run tag @s add obl.biome.swamp
execute if biome ~ ~ ~ #minecraft:is_taiga run tag @s add obl.biome.taiga
execute if biome ~ ~ ~ #obl:is_tundra run tag @s add obl.biome.tundra
execute if biome ~ ~ ~ warm_ocean run tag @s add obl.biome.warm_ocean
execute if biome ~ ~ ~ pale_garden run tag @s add obl.biome.pale_garden



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