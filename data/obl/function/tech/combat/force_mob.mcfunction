# эта функция выполняется только на мобах

tag @s add obl.temp.this
execute on target if entity @s[type=player] as @n[tag=obl.temp.this] run function obl:tech/combat/enter
tag @s remove obl.temp.this