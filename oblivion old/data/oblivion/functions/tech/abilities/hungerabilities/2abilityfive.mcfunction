execute if score @s abilities matches 400 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 400 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 2
execute if score @s abilities matches 400 run execute at @e[tag=obl.gianthungerdecor,limit=1] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
execute if score @s abilities matches 400 run data merge entity @s {Invulnerable:0b,NoAI:0b,Glowing:1b}
execute if score @s abilities matches 400 run tp @s @e[tag=obl.hungerstandcenter,limit=1]
execute if score @s abilities matches 400 run effect give @a[tag=inbattlewithhunger] blindness 2 0 true
execute if score @s abilities matches 400 at @s run kill @e[tag=obl.hungerstand]
execute if score @s abilities matches 400 at @s run kill @e[tag=obl.goodfood]
execute if score @s abilities matches 400 at @s run kill @e[tag=obl.cursedfood]

execute if score @s abilities matches 450 run function oblivion:tech/abilities/hungerabilities/hungersummon
execute if score @s abilities matches 460 run function oblivion:tech/abilities/hungerabilities/hungersummon

execute if score @s abilities matches 500 run execute as @e[tag=obl.gianthungerdecor,limit=1,sort=random] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s abilities matches 505 run execute as @e[tag=obl.gianthungerdecor,limit=1,sort=random] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon

execute if score @s abilities matches 600 run execute as @e[tag=obl.gianthungerdecor,limit=1,sort=random] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon
execute if score @s abilities matches 605 run execute as @e[tag=obl.gianthungerdecor,limit=1,sort=random] at @s run function oblivion:tech/abilities/hungerabilities/gianthungersummon

execute if score @s abilities matches 650 run function oblivion:tech/abilities/hungerabilities/hungersummon
execute if score @s abilities matches 660 run function oblivion:tech/abilities/hungerabilities/hungersummon

execute if score @s abilities matches 700 run data merge entity @s {Invulnerable:1b,NoAI:1b,Glowing:0b}
execute if score @s abilities matches 700 run tp @s ~ -10 ~