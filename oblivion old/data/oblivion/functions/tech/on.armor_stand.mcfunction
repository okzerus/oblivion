###   M O D I F Y
execute if entity @s[tag=!obl.stand.modified] run function oblivion:tech/modify.armor_stand

###   C H E C K S
execute if entity @s[predicate=!oblivion:unusual,predicate=!oblivion:circling_unusual,tag=obl.stand.has_unusual] run tag @s remove obl.stand.has_unusual
execute if entity @s[predicate=oblivion:unusual,tag=!obl.stand.has_unusual] run function oblivion:tech/modify.armor_stand.unusual
execute if entity @s[predicate=oblivion:circling_unusual,tag=!obl.stand.has_unusual] run function oblivion:tech/modify.armor_stand.unusual

execute if entity @s[tag=obl.stand.has_unusual,tag=obl.stand.disabled_unusual] at @e[type=armor_stand,distance=..75,tag=obl.stand.has_unusual] run scoreboard players add #stand.counter oblivion 1
execute if entity @s[tag=obl.stand.has_unusual,tag=obl.stand.disabled_unusual] if score #stand.counter oblivion matches ..3 run title @p[distance=..3] actionbar {"text":"Переустановите эту стойку, чтобы отобразить эффекты","color":"#FF4B4D"}
execute if entity @s[tag=obl.stand.has_unusual,tag=!obl.stand.player_owner] run title @p[distance=..3] actionbar {"text":"Переустановите эту стойку, чтобы отобразить эффекты","color":"#FF4B4D"}
scoreboard players set #stand.counter oblivion 0

###   W E E P I N G   A N G E L S
execute if entity @s[tag=obl.weeping_angel.stand] run scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=obl.weeping_angel.stand] unless entity @e[type=husk,predicate=oblivion:matching_score] run kill @s
execute if entity @s[tag=obl.weeping_angel.falling] if predicate oblivion:on.ground run kill @s

###   U N U S U A L
## DEFAULT
execute if predicate oblivion:unusual if entity @s[tag=obl.stand.player_owner,tag=!obl.stand.disabled_unusual] run function oblivion:tech/unusual/main
## CIRCLING
execute if predicate oblivion:circling_unusual if entity @s[tag=obl.stand.player_owner,tag=!obl.stand.disabled_unusual] run function oblivion:tech/unusual/check