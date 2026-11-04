# эта функция выполняется только на мобах

tag @s add obl.temp.this
execute on target if entity @s[type=player] run tag @n[tag=obl.temp.this] add obl.temp.tick_cancel
tag @s remove obl.temp.this