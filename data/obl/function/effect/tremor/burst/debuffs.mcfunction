###   Ф У Н К Ц И Я
attribute @s minecraft:armor modifier remove obl:tremor
attribute @s minecraft:movement_speed modifier remove obl:tremor
attribute @s minecraft:attack_speed modifier remove obl:tremor
attribute @s minecraft:attack_damage modifier remove obl:tremor

$attribute @s minecraft:armor modifier add obl:tremor $(x) add_multiplied_total
$attribute @s minecraft:movement_speed modifier add obl:tremor $(x) add_multiplied_total
$attribute @s minecraft:attack_speed modifier add obl:tremor $(x) add_multiplied_total
$attribute @s minecraft:attack_damage modifier add obl:tremor $(x) add_multiplied_total