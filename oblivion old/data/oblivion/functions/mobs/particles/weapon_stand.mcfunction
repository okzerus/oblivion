execute if entity @s[tag=obl.weapon_stand.murasama,tag=obl.weapon_stand.has_item] run particle dust 1 0 0 0.5 ~-0.2 ~0.5 ~-0.3 0.1 0.2 0.1 0 2
execute if entity @s[tag=obl.weapon_stand.murasama,tag=obl.weapon_stand.has_item] run particle dust 1 0 0 0.5 ~ ~20 ~ 30 30 30 0 10 force
execute if entity @s[tag=obl.weapon_stand.murasama,tag=obl.weapon_stand.has_item] run title @a[distance=..2,scores={obl.difficulty=..10}] actionbar {"text":"Вы чувствуете, что ещё не достойны этого клинка..","italic":true,"color":"#F65D5F"}

execute if entity @s[tag=obl.weapon_stand.yamato,tag=obl.weapon_stand.has_item] run particle dust 0.5 0.5 1 0.5 ~-0.05 ~0.9 ~-0.6 0.1 0.2 0.1 0 2
execute if entity @s[tag=obl.weapon_stand.yamato,tag=obl.weapon_stand.has_item] run particle dust 0.5 0.5 1 0.5 ~ ~ ~ 30 30 30 0 10 force
execute if entity @s[tag=obl.weapon_stand.yamato,tag=obl.weapon_stand.has_item] run title @a[distance=..2,scores={obl.difficulty=..10}] actionbar {"text":"Вы чувствуете, что ещё не достойны этого клинка..","italic":true,"color":"#F65D5F"}