execute at @s unless block ~ ~3 ~ air run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0.1
execute at @s unless block ~ ~3 ~ air run tp ~ ~10 ~
scoreboard players add @s abilities 1
scoreboard players set hungeralive oblivion 1
execute at @e[tag=obl.hungerstandcenter] run particle dust 1 1 0 3 ~ ~ ~ 10 4 10 0 20 force
execute unless entity @e[tag=obl.hungerhead] as @a[tag=obl.hungerchosen] run tag @s remove obl.hungerchosen

execute at @s[tag=!obl.gianthunger] as @a[distance=..60,tag=!inbattlewithhunger,scores={obl.difficulty=6..},tag=!obl.plbossdeath] run function oblivion:tech/abilities/hungerabilities/joinhunger
execute at @s[tag=!obl.gianthunger] as @a[distance=61..,tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/leavehunger
execute at @s[tag=obl.gianthunger] as @a[distance=..150,tag=!inbattlewithhunger,scores={obl.difficulty=6..},tag=!obl.plbossdeath] run function oblivion:tech/abilities/hungerabilities/joinhunger
execute at @s[tag=obl.gianthunger] as @a[distance=151..,tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/leavehunger

execute if score @s abilities matches 1 at @s run kill @e[tag=obl.hungerstand]
execute if score @s abilities matches 1 at @s run kill @e[tag=obl.goodfood]
execute if score @s abilities matches 1 at @s run kill @e[tag=obl.cursedfood]

execute as @a[distance=..2,tag=inbattlewithhunger] at @s run function oblivion:tech/abilities/hungerabilities/playernear
execute if entity @s[tag=obl.gianthunger] as @a[tag=inbattlewithhunger] at @s if entity @e[tag=obl.hungerstandcenter,distance=15..] run function oblivion:tech/abilities/hungerabilities/hungerstandcenter



execute if score @s[tag=!obl.gianthunger] abilities matches 10 at @s run function oblivion:tech/abilities/hungerabilities/hungersummon
execute if score @s[tag=!obl.gianthunger] abilities matches 14 at @s run function oblivion:tech/abilities/hungerabilities/hungersummon
execute if score @s[tag=!obl.gianthunger] abilities matches 20..40 at @s run function oblivion:tech/abilities/hungerabilities/1abilityone
execute if score @s[tag=!obl.gianthunger] abilities matches 80 at @s run function oblivion:tech/abilities/hungerabilities/hungersummon
execute if score @s[tag=!obl.gianthunger] abilities matches 100..110 at @s run function oblivion:tech/abilities/hungerabilities/1abilitytwo
execute if score @s[tag=!obl.gianthunger] abilities matches 140..160 at @s run function oblivion:tech/abilities/hungerabilities/1abilitythree
execute if score @s[tag=!obl.gianthunger] abilities matches 180..200 at @s run function oblivion:tech/abilities/hungerabilities/1abilityfour




execute if score @s[tag=obl.gianthunger] abilities matches 20..180 at @s run function oblivion:tech/abilities/hungerabilities/2abilityone
execute if score @s[tag=obl.gianthunger] abilities matches 210..220 at @s run function oblivion:tech/abilities/hungerabilities/2abilitytwo
execute if score @s[tag=obl.gianthunger] abilities matches 230 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 235 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 240 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 260..270 at @s unless entity @e[tag=obl.gianthungerhead] run function oblivion:tech/abilities/hungerabilities/2abilitythree
execute if score @s[tag=obl.gianthunger] abilities matches 310..320 at @s run function oblivion:tech/abilities/hungerabilities/2abilityfour
execute if score @s[tag=obl.gianthunger] abilities matches 330 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 335 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 340 at @s run execute as @e[tag=obl.gianthungerdecor,sort=random,limit=1] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s[tag=obl.gianthunger] abilities matches 400..700 at @s run function oblivion:tech/abilities/hungerabilities/2abilityfive
execute if score @s[tag=obl.gianthunger] abilities matches 500..520 at @s run function oblivion:tech/abilities/hungerabilities/2abilitysix
execute if score @s[tag=obl.gianthunger] abilities matches 600..620 at @s run function oblivion:tech/abilities/hungerabilities/2abilityseven




execute store result score @s hungerhealth run data get entity @s Health
execute if score @s hungerhealth matches ..200 if entity @s[tag=!obl.gianthunger] run function oblivion:tech/abilities/hungerabilities/gianthunger


# Bossbar
execute at @s[tag=!obl.gianthunger] run bossbar set oblivion:hunger players @a[distance=..50]
execute at @s[tag=obl.gianthunger] run bossbar set oblivion:hunger players @a[tag=inbattlewithhunger,distance=..200]
execute store result bossbar oblivion:hunger value run data get entity @s Health


execute if score @s abilities matches 100 run function oblivion:tech/abilities/hungerabilities/removefoodtags
execute if score @s abilities matches 200 run function oblivion:tech/abilities/hungerabilities/removefoodtags

execute if score @s[tag=!obl.gianthunger] abilities matches 200.. run scoreboard players set @s abilities 0
execute if score @s[tag=obl.gianthunger] abilities matches 700.. run scoreboard players set @s abilities 0

# Boost

scoreboard players set @s playercount 0
execute at @a[distance=..50] run scoreboard players add @s playercount 1

execute if score @s playercount matches 3 run effect give @s strength 10 1 true
execute if score @s playercount matches 4 run effect give @s resistance 10 0 true
execute if score @s playercount matches 4 run effect give @s strength 10 2 true
execute if score @s playercount matches 5 run effect give @s resistance 10 1 true
execute if score @s playercount matches 5 run effect give @s strength 10 3 true

execute at @s[tag=obl.gianthunger] unless entity @a[distance=..150,tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/everyoneleft
execute at @s[tag=!obl.gianthunger] unless entity @a[distance=..61,tag=inbattlewithhunger] run function oblivion:tech/abilities/hungerabilities/everyoneleft