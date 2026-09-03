tag @s remove obl.yamato_offhand
tag @s remove obl.yamato.post_ability

execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..20 anchored feet positioned ^1 ^ ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..40 anchored feet positioned ^1 ^-.4 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..60 anchored feet positioned ^1 ^-.8 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..80 anchored feet positioned ^-1 ^ ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..100 anchored feet positioned ^-1 ^-.4 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] if score @s obl.yamato.time.swords matches 1..120 anchored feet positioned ^-1 ^-.8 ^0.7 run function oblivion:tech/projectiles/shoot/yamato_sword
execute if entity @s[tag=obl.yamato.shooting_swords] run scoreboard players set @s obl.yamato.time.swords 0
tag @s remove obl.yamato.shooting_swords

execute if entity @s[tag=obl.yamato.preparing_ability] unless score @s obl.yamato.time.ability matches 30..41 run function oblivion:items/abilities/yamato/ability.fail
execute if entity @s[tag=obl.yamato.preparing_ability] if score @s obl.yamato.time.ability matches 30..41 run function oblivion:items/abilities/yamato/ability.success