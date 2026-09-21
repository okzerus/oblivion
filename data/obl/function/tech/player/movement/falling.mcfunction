tag @s add obl.falling

## Отладка:
execute if entity @s[tag=obl.debug,tag=!obl.moving,tag=!obl.sprinting] run say Падаю
execute if entity @s[tag=obl.debug,tag=obl.moving] run say Иду и падаю
execute if entity @s[tag=obl.debug,tag=obl.sprinting] run say Бегу и падаю

###   П А Р И Р О В А Н И Е   П А Д Е Н И Я
function obl:tech/parrying/fall/ground_probe
function obl:tech/parrying/fall/check