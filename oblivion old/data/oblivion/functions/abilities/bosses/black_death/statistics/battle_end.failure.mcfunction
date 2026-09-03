## Store current game time
execute store result score @s obl.boss_time run time query gametime

## Add an attempt
scoreboard players add @s obl.boss.black_death.attempts_overall 1
scoreboard players add @s obl.boss.black_death.attempts 1

## Operations
scoreboard players operation @s obl.boss_time -= @s obl.boss_time.start
scoreboard players operation @s obl.minute = @s obl.boss_time
scoreboard players operation @s obl.second = @s obl.boss_time
scoreboard players operation @s obl.minute /= 1200 obl.const
scoreboard players operation @s obl.second /= 20 obl.const
scoreboard players operation @s obl.second %= 60 obl.const
scoreboard players operation @s obl.minute.pb = @s obl.boss.black_death.best
scoreboard players operation @s obl.second.pb = @s obl.boss.black_death.best
scoreboard players operation @s obl.minute.pb /= 1200 obl.const
scoreboard players operation @s obl.second.pb /= 20 obl.const	
scoreboard players operation @s obl.second.pb %= 60 obl.const
scoreboard players operation $nohit obl.minute.sb_nh = $nohit obl.boss.black_death.best
scoreboard players operation $nohit obl.second.sb_nh = $nohit obl.boss.black_death.best
scoreboard players operation $nohit obl.minute.sb_nh /= 1200 obl.const
scoreboard players operation $nohit obl.second.sb_nh /= 20 obl.const
scoreboard players operation $nohit obl.second.sb_nh %= 60 obl.const
scoreboard players operation $server obl.minute.sb = $server obl.boss.black_death.best
scoreboard players operation $server obl.second.sb = $server obl.boss.black_death.best
scoreboard players operation $server obl.minute.sb /= 1200 obl.const
scoreboard players operation $server obl.second.sb /= 20 obl.const
scoreboard players operation $server obl.second.sb %= 60 obl.const
execute unless score @s obl.boss.black_death.win_count matches 1.. run scoreboard players set @s obl.boss.black_death.win_count 0

## Send result in the chat
tellraw @s [{"text":""}]
tellraw @s [{"text":"[Результат последнего боя]","color":"gold"}]
tellraw @s [{"text":" ","color":"gold"},{"text":"Статус: ","color":"yellow"},{"text":"Неудача","color":"red"}]
tellraw @s [{"text":""}]
execute unless score @s obl.second matches ..9 unless score @s obl.minute matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Время: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.minute"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"obl.second"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss_time"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.second matches ..9 unless score @s obl.minute matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Время: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.minute"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.second"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss_time"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.minute matches ..9 unless score @s obl.second matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Время: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.minute"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"obl.second"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss_time"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.minute matches ..9 if score @s obl.second matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Время: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.minute"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.second"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss_time"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute unless score @s obl.second.pb matches ..9 unless score @s obl.minute.pb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Персональный рекорд: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.minute.pb"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"obl.second.pb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.second.pb matches ..9 unless score @s obl.minute.pb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Персональный рекорд: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.minute.pb"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.second.pb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.minute.pb matches ..9 unless score @s obl.second.pb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Персональный рекорд: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.minute.pb"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"obl.second.pb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute if score @s obl.minute.pb matches ..9 if score @s obl.second.pb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Персональный рекорд: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.minute.pb"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"obl.second.pb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков)","color":"yellow"}]
execute unless score $server obl.second.sb matches ..9 unless score $server obl.minute.sb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера: ","color":"yellow"},{"score":{"name":"$server","objective":"obl.minute.sb"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"$server","objective":"obl.second.sb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$server","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best","interpret":"true","color":"gold"}]
execute if score $server obl.second.sb matches ..9 unless score $server obl.minute.sb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера: ","color":"yellow"},{"score":{"name":"$server","objective":"obl.minute.sb"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"$server","objective":"obl.second.sb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$server","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best","interpret":"true","color":"gold"}]
execute if score $server obl.minute.sb matches ..9 unless score $server obl.second.sb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"$server","objective":"obl.minute.sb"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"$server","objective":"obl.second.sb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$server","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best","interpret":"true","color":"gold"}]
execute if score $server obl.minute.sb matches ..9 if score $server obl.second.sb matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"$server","objective":"obl.minute.sb"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"$server","objective":"obl.second.sb"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$server","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best","interpret":"true","color":"gold"}]
execute unless score $nohit obl.second.sb_nh matches ..9 unless score $nohit obl.minute.sb_nh matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера ","color":"yellow"},{"text":"NO-HIT","color":"red"},{"text":": ","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.minute.sb_nh"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"$nohit","objective":"obl.second.sb_nh"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best_no_hit","interpret":"true","color":"gold"}]
execute if score $nohit obl.second.sb_nh matches ..9 unless score $nohit obl.minute.sb_nh matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера ","color":"yellow"},{"text":"NO-HIT","color":"red"},{"text":": ","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.minute.sb_nh"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"$nohit","objective":"obl.second.sb_nh"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best_no_hit","interpret":"true","color":"gold"}]
execute if score $nohit obl.minute.sb_nh matches ..9 unless score $nohit obl.second.sb_nh matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера ","color":"yellow"},{"text":"NO-HIT","color":"red"},{"text":": ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"$nohit","objective":"obl.minute.sb_nh"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"$nohit","objective":"obl.second.sb_nh"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best_no_hit","interpret":"true","color":"gold"}]
execute if score $nohit obl.minute.sb_nh matches ..9 if score $nohit obl.second.sb_nh matches ..9 run tellraw @s [{"text":"  > ","color":"gold"},{"text":"Рекорд сервера ","color":"yellow"},{"text":"NO-HIT","color":"red"},{"text":": ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"$nohit","objective":"obl.minute.sb_nh"},"color":"gold"},{"text":":","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"$nohit","objective":"obl.second.sb_nh"},"color":"gold"},{"text":" (","color":"yellow"},{"score":{"name":"$nohit","objective":"obl.boss.black_death.best"},"color":"gold"},{"text":" тиков) ","color":"yellow"},{"storage":"oblivion:server","nbt":"black_death.best_no_hit","interpret":"true","color":"gold"}]
tellraw @s [{"text":"  > ","color":"gold"},{"text":"Мировой рекорд: ","color":"yellow"},{"text":"?","color":"gold"}]
tellraw @s [{"text":"  > ","color":"gold"},{"text":"Кол-во попыток: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.attempts"},"color":"gold"}]
tellraw @s [{"text":"  > ","color":"gold"},{"text":"Кол-во побед: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.win_count"},"color":"gold"}]
tellraw @s [{"text":"  > ","color":"gold"},{"text":"Общее кол-во попыток: ","color":"yellow"},{"score":{"name":"@s","objective":"obl.boss.black_death.attempts_overall"},"color":"gold"}]
tellraw @s [{"text":""}]

## Cleanup
scoreboard players reset @s obl.second
scoreboard players reset @s obl.minute
scoreboard players reset @s obl.second.pb
scoreboard players reset @s obl.minute.pb
scoreboard players reset @s obl.second.sb
scoreboard players reset @s obl.minute.sb
scoreboard players reset @s obl.boss_time.start
scoreboard players reset @s obl.boss_time
tag @a[tag=obl.selected] remove obl.selected