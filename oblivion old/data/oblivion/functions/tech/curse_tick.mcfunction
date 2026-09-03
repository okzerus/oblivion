particle enchant ~ ~1.5 ~ 0.5 1 0.5 0.01 2
scoreboard players add @s obl.curse.sec 1

execute if score @s[tag=obl.has_effect.poison] obl.curse.sec matches 30 run effect give @s poison 3 0 false
execute if score @s[tag=obl.has_effect.wither] obl.curse.sec matches 30 run effect give @s wither 3 0 false
execute if score @s[tag=obl.has_effect.hunger] obl.curse.sec matches 30 run effect give @s hunger 3 0 false

execute if entity @s[tag=obl.has_effect.blindness] run effect give @s blindness 2 0 false
execute if entity @s[tag=obl.has_effect.weakness] run effect give @s weakness 1 0 false
execute if entity @s[tag=obl.has_effect.slowness] run effect give @s slowness 1 0 false
execute if entity @s[tag=obl.has_effect.mining_fatigue] run effect give @s mining_fatigue 1 0 false
execute if entity @s[tag=obl.has_effect.unluck] run effect give @s unluck 1 0 false
execute if entity @s[tag=obl.has_effect.darkness] run effect give @s darkness 2 0 false
execute if entity @s[tag=obl.has_effect.levitation] run effect give @s levitation 1 0 false
execute if entity @s[tag=obl.has_effect.nausea] run effect give @s nausea 5 0 false

scoreboard players add @s[tag=!obl.infinite_curse] obl.curse 1
execute if score @s obl.curse.sec matches 30.. run scoreboard players set @s obl.curse.sec 0
execute if score @s obl.curse matches 400.. run function oblivion:tech/curse_disabled