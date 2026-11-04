# Телепортируем игрока
$data modify storage obl:ego players.p$(id) set from storage obl:ego args.original
$execute in obl:ego run tp @s 0 42 $(tz)