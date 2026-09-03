gamerule naturalRegeneration true
scoreboard players add daycount oblivion 1
scoreboard players add yearcount oblivion 1
execute if score daycount oblivion matches 8 run scoreboard players set daycount oblivion 1
execute if score yearcount oblivion matches 366 run scoreboard players set yearcount oblivion 1

scoreboard players set obl.isday oblivion 1
scoreboard players set nextnightisbloodmoon oblivion 0
scoreboard players set nextnightispearlmoon oblivion 0
scoreboard players set nextnightisxmasmoon oblivion 0

execute if score daycount oblivion matches 7 run function oblivion:rng

execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 1..15 run function oblivion:day/startgreatday
execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 16..30 run scoreboard players set nextnightispearlmoon oblivion 1
execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 31..40 if entity @a[scores={obl.difficulty=5..}] run function oblivion:day/startsolareclipse
execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 41..50 if entity @a[scores={obl.difficulty=5..}] run scoreboard players set nextnightisbloodmoon oblivion 1
execute if score daycount oblivion matches 7 if score xmasenabled oblivion matches 1 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 51..55 if entity @a[scores={obl.difficulty=5..}] run scoreboard players set nextnightisxmasmoon oblivion 1
execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 31..40 if entity @a[scores={obl.difficulty=5..}] run tellraw @a {"text":"\u042d\u0442\u0430 \u043d\u043e\u0447\u044c \u0431\u0443\u0434\u0435\u0442 \u043e\u0441\u043e\u0431\u0435\u043d\u043d\u043e\u0439..","italic":true,"color":"blue"}
execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 41..50 if entity @a[scores={obl.difficulty=5..}] run tellraw @a {"text":"\u042d\u0442\u0430 \u043d\u043e\u0447\u044c \u0431\u0443\u0434\u0435\u0442 \u043e\u0441\u043e\u0431\u0435\u043d\u043d\u043e\u0439..","italic":true,"color":"blue"}
execute if score daycount oblivion matches 7 if score xmasenabled oblivion matches 1 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 51..55 if entity @a[scores={obl.difficulty=5..}] run tellraw @a {"text":"\u042d\u0442\u0430 \u043d\u043e\u0447\u044c \u0431\u0443\u0434\u0435\u0442 \u043e\u0441\u043e\u0431\u0435\u043d\u043d\u043e\u0439..","italic":true,"color":"blue"}

execute if score daycount oblivion matches 7 unless score yearcount oblivion matches 365 if score randomizer obl.rng matches 31..55 unless entity @a[scores={obl.difficulty=5..}] run function oblivion:tech/difficulty/announceaboutdifficulty


execute if score yearcount oblivion matches 365 if entity @a[scores={obl.difficulty=5..}] run tellraw @a {"text":"Вы чувствуете прилив рождественского настроения! Кажется, этой ночью будет весело!","italic":true,"color":"blue"}
execute if score yearcount oblivion matches 365 if entity @a[scores={obl.difficulty=5..}] run scoreboard players set nextnightisxmasmoon oblivion 1
execute if score yearcount oblivion matches 365 unless entity @a[scores={obl.difficulty=5..}] run function oblivion:tech/difficulty/announceaboutdifficulty

execute if score bloodmoon oblivion matches 1 run function oblivion:endevents/endbloodmoon
execute if score xmasmoon oblivion matches 1 run function oblivion:endevents/endxmasmoon
execute if score pearlmoon oblivion matches 1 run function oblivion:endevents/endpearlmoon

stopsound @a[tag=!inbattlewithpixie,tag=!inbattlewithhunger] voice

execute if score bloodmoonmusictimer oblivion matches 1.. run scoreboard players set bloodmoonmusictimer oblivion 1
execute if score pearlmoonmusictimer oblivion matches 1.. run scoreboard players set pearlmoonmusictimer oblivion 1
execute if score xmasmoonmusictimer oblivion matches 1.. run scoreboard players set xmasmoonmusictimer oblivion 1

execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 1 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 1 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 1 run title @s subtitle {"text":"Понедельник","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 2 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 2 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 2 run title @s subtitle {"text":"Вторник","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 3 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 3 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 3 run title @s subtitle {"text":"Среда","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 4 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 4 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 4 run title @s subtitle {"text":"Четверг","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 5 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 5 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 5 run title @s subtitle {"text":"Пятница","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 6 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 6 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 6 run title @s subtitle {"text":"Суббота","color":"green"}
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 7 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 7 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"}]
execute as @a if predicate oblivion:items/has.clock if score daycount oblivion matches 7 run title @s subtitle {"text":"Воскресенье","color":"green"}

execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 1 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 1 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 1 run title @s subtitle {"text":"Понедельник","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 2 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 2 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 2 run title @s subtitle {"text":"Вторник","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 3 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 3 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 3 run title @s subtitle {"text":"Среда","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 4 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 4 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 4 run title @s subtitle {"text":"Четверг","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 5 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 5 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 5 run title @s subtitle {"text":"Пятница","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 6 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 6 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 6 run title @s subtitle {"text":"Суббота","color":"green"}
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 7 run title @s times 20 100 20
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 7 run title @s title ["",{"text":"\u0414\u0435\u043d\u044c \u043d\u0435\u0434\u0435\u043b\u0438: ","color":"green"},{"score":{"name":"daycount","objective":"oblivion"},"color":"light_purple"},{"text":" (","color":"dark_purple"},{"score":{"name":"yearcount","objective":"oblivion"},"color":"dark_purple"},{"text":")","color":"dark_purple"}]
execute as @a if predicate oblivion:items/has.kpk if score daycount oblivion matches 7 run title @s subtitle {"text":"Воскресенье","color":"green"}

bossbar remove oblivion:grinch
bossbar remove oblivion:hunger
bossbar remove oblivion:devil

tellraw @a[tag=obl.enchanted] ["",{"text":"\n"},{"text":"Вы снова можете попытать свою удачу на Алтаре Забвения!","italic":true,"color":"#652E78"},{"text":"\n "}]
tag @a[tag=obl.enchanted] remove obl.good_enchantment
tag @a[tag=obl.enchanted] remove obl.bad_enchantment
tag @a[tag=obl.enchanted] remove obl.enchanted

scoreboard players set @a infectedvill 0

scoreboard players add @a[tag=obl.virusimmuny] immuny 1
execute as @a[tag=obl.virusimmuny] if score @s immuny matches 4.. run function oblivion:tech/disableimmuny

execute if score hungeralive oblivion matches 1 run function oblivion:tech/abilities/hungerabilities/day