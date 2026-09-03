execute unless score @s oblivion matches 3.. run scoreboard players add @s oblivion 1

execute if score @s oblivion matches 2 run particle angry_villager ~ ~ ~ 0.3 0 0.3 0 10
execute if score @s oblivion matches 2 run playsound minecraft:block.note_block.pling master @a[distance=..50] ~ ~ ~ 5 0.5
execute if score @s oblivion matches 2 run tellraw @a[distance=..20] [{"text":"\n"},{"text":"Не удалось призвать босса. ","italic":true,"color":"dark_red"}]

execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{obl.day_only:1b}}}] if score obl.isday oblivion matches 0 run tellraw @a[distance=..20] [{"text":"Этого босса нужно призывать днём.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{obl.night_only:1b}}}] if score obl.isday oblivion matches 1 run tellraw @a[distance=..20] [{"text":"Этого босса нужно призывать ночью.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if score obl.isevent oblivion matches 1 run tellraw @a[distance=..20] [{"text":"На данный момент активно одно из событий.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if score obl.isbossactive oblivion matches 1 run tellraw @a[distance=..20] [{"text":"На данный момент уже активен один из боссов.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{obl.activated:0b}}}] run tellraw @a[distance=..20] [{"text":"Этот предмет призыва должен быть активирован на Алтаре Забвения.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{id:"minecraft:raw_iron"}}}] unless entity @a[distance=..20,scores={obl.difficulty=1..}] run tellraw @a[distance=..20] [{"text":"Ваш уровень недостаточно высокий для этого босса.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{id:"minecraft:rotten_flesh"}}}] unless entity @a[distance=..20,scores={obl.difficulty=6..}] run tellraw @a[distance=..20] [{"text":"Ваш уровень недостаточно высокий для этого босса.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 if entity @s[nbt={Item:{tag:{id:"minecraft:book"}}}] unless entity @a[distance=..20,scores={obl.difficulty=8..}] run tellraw @a[distance=..20] [{"text":"Ваш уровень недостаточно высокий для этого босса.","italic":true,"color":"red"}]
execute if score @s oblivion matches 2 run tellraw @a[distance=..20] [{"text":""}]
