data modify storage obl:ego args set value {}
execute store result storage obl:ego args.id int 1 run scoreboard players get @s obl.id
scoreboard players operation #z obl = @s obl.id
scoreboard players remove #z obl 1
scoreboard players operation #z obl *= #1000 obl.const
execute store result storage obl:ego args.tz int 1 run scoreboard players get #z obl