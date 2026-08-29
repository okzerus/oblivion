# Oblivion — лут-таблицы (namespace: obl)

Папку `loot_tables` положить в `data/obl/`.
Если версия использует единственное число — переименовать в `loot_table`.

## Точки входа

Для каждого из 16 биомов:
    obl:dungeons/ruins/<biome>/chest       — сундуки (2-3 на руину)
    obl:dungeons/ruins/<biome>/barrel      — бочки (5 на руину)
    obl:dungeons/ruins/<biome>/suspicious  — подозрительный песок/гравий

<biome>:
    badlands   dark_forest   desert    flower_forest   forest
    frozen_ocean   jungle    mountains   ocean   pale_garden
    plains   savanna   swamp   taiga   tundra   warm_ocean

Данж «Улей» (без бочек и археологии, не переделывался):
    obl:dungeons/ruins/bee_nest/chest

## Схема

chest:      3 ролла филлера биома + 1 ролл типа + 30% ролл rare
barrel:     2 ролла филлера биома + 8% ролл rare
suspicious: ровно 1 предмет (тип таблицы minecraft:archaeology)

У каждого биома 5 типов: 4 тематических + archaeology.
Пул rare вынесен в rare.json на биом — сундук и бочка ссылаются
на один список, отличаются только шансом.

## Отделки брони — по одной на биом, без повторов
    badlands shaper | dark_forest vex | desert dune | flower_forest wayfinder
    forest host | frozen_ocean ward | jungle wild | mountains spire
    ocean tide | pale_garden flow | plains sentry | savanna rib
    swamp raiser | taiga eye | tundra silence | warm_ocean coast

## Зачарования
Книги — через компонент stored_enchantments, уровни фиксированы и
всегда ниже максимума. Шёлковое касание, Починка и прочие с максимумом I
исключены: у них нельзя выдать «не максимальный».

Формат здесь плоский:
    "minecraft:stored_enchantments": { "minecraft:efficiency": 2 }
На 1.21.0-1.21.4 обернуть:
    "minecraft:stored_enchantments": { "levels": { "minecraft:efficiency": 2 } }

## Команды
    /data merge block ~ ~ ~ {LootTable:"obl:dungeons/ruins/jungle/chest"}
    /loot give @s loot obl:dungeons/ruins/tundra/barrel
