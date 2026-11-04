###   Ф У Н К Ц И Я
title @s times 0 30 10
title @s title {"text":"ОГЛУШЁН!","italic":true,"color":"#75aca4"}

## Динамичный subtitle
scoreboard players operation #current obl = @s obl.effect.stun.tick
scoreboard players operation #current obl *= #ten obl.const
scoreboard players operation #max obl = @s obl.effect.stun.max
scoreboard players operation #current obl += #max obl
scoreboard players remove #current obl 1
scoreboard players operation #current obl /= #max obl

scoreboard players operation #empty obl = #10 obl
scoreboard players operation #empty obl -= #current obl

execute store result storage obl:stun args.c int 1 run scoreboard players get #current obl
execute store result storage obl:stun args.e int 1 run scoreboard players get #empty obl

function obl:effect/stun/macro with storage obl:stun args