###   A D D   T A G
execute if score @s obl.difficulty matches 2.. if biome ~ ~ ~ #oblivion:oceans anchored eyes positioned ^ ^ ^ if predicate oblivion:in_water run tag @s add obl.equipped.accs.dolphins_pearl
tag @s[scores={obl.difficulty=3..}] add obl.equipped.accs.shard_of_time
tag @s[scores={obl.difficulty=0..}] add obl.equipped.accs.oblivion_clock
tag @s[scores={obl.difficulty=0..}] add obl.equipped.accs.oblivion_monocle
tag @s[scores={obl.difficulty=1..}] add obl.equipped.accs.storm_bottle
tag @s[scores={obl.difficulty=2..}] add obl.equipped.accs.cursed_soul
tag @s[scores={obl.difficulty=6..}] add obl.equipped.accs.bad_apple


###   R E M O V E   T A G   I F   N O   A C C E S S O R Y   D E T E C T E D
execute if entity @s[tag=obl.equipped.accs.dolphins_pearl] unless score @s obl.accessory_slot.1 matches 42900 unless score @s obl.accessory_slot.2 matches 42900 unless score @s obl.accessory_slot.3 matches 42900 run tag @s remove obl.equipped.accs.dolphins_pearl
execute if entity @s[tag=obl.equipped.accs.shard_of_time] unless score @s obl.accessory_slot.1 matches 42901 unless score @s obl.accessory_slot.2 matches 42901 unless score @s obl.accessory_slot.3 matches 42901 run tag @s remove obl.equipped.accs.shard_of_time
execute if entity @s[tag=obl.equipped.accs.cursed_soul] unless score @s obl.accessory_slot.1 matches 7170 unless score @s obl.accessory_slot.2 matches 7170 unless score @s obl.accessory_slot.3 matches 7170 run tag @s remove obl.equipped.accs.cursed_soul
execute if entity @s[tag=obl.equipped.accs.oblivion_monocle] unless score @s obl.accessory_slot.1 matches 5069 unless score @s obl.accessory_slot.2 matches 5069 unless score @s obl.accessory_slot.3 matches 5069 run tag @s remove obl.equipped.accs.oblivion_monocle
execute if entity @s[tag=obl.equipped.accs.bad_apple] unless score @s obl.accessory_slot.1 matches 5055 unless score @s obl.accessory_slot.2 matches 5055 unless score @s obl.accessory_slot.3 matches 5055 run tag @s remove obl.equipped.accs.bad_apple
execute if entity @s[tag=obl.equipped.accs.storm_bottle] unless score @s obl.accessory_slot.1 matches 5052 unless score @s obl.accessory_slot.2 matches 5052 unless score @s obl.accessory_slot.3 matches 5052 run tag @s remove obl.equipped.accs.storm_bottle
execute if entity @s[tag=obl.equipped.accs.oblivion_clock] unless score @s obl.accessory_slot.1 matches 20000 unless score @s obl.accessory_slot.2 matches 20000 unless score @s obl.accessory_slot.3 matches 20000 run tag @s remove obl.equipped.accs.oblivion_clock


###   A C C E S S O R Y   F U N C T I O N
## Shard of Time
execute if entity @s[tag=obl.equipped.accs.shard_of_time] run function oblivion:items/accs/shard_of_time/main
execute if entity @s[tag=obl.equipped.accs.shard_of_time,tag=obl.shard_of_time.teleporting] unless score @s obl.shard_of_time.teleporting matches 1.. run function oblivion:items/accs/shard_of_time/teleporting
## Dolphins Pearl
execute if entity @s[tag=obl.equipped.accs.dolphins_pearl] unless score @s obl.dolphins_pearl.charge matches 1.. run function oblivion:items/accs/dolphins_pearl
execute if score @s obl.dolphins_pearl.charge matches 1.. run function oblivion:items/accs/dolphins_pearl
## Bad Apple
execute if entity @s[tag=obl.equipped.accs.bad_apple] run function oblivion:items/accs/bad_apple
## Cursed Soul
execute if entity @s[tag=obl.equipped.accs.cursed_soul] run function oblivion:items/accs/cursed_soul
## Oblivion Clock
execute if entity @s[tag=obl.equipped.accs.oblivion_clock,tag=!obl.empowered.oblivion_clock] run function oblivion:items/accs/oblivion_clock
execute if entity @s[tag=!obl.equipped.accs.oblivion_clock,tag=obl.empowered.oblivion_clock] run function oblivion:items/accs/oblivion_clock
## Oblivion Monocle
execute if entity @s[tag=obl.equipped.accs.oblivion_monocle] run function oblivion:items/accs/oblivion_monocle/main

###   C L E A N U P
tag @s remove obl.equipped.accs.dolphins_pearl