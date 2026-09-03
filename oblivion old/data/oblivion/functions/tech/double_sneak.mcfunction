###   R E S E T   C O U N T E R
scoreboard players set @s obl.double_sneak.time 0

###   F U N C T I O N S
tag @s add obl.double_sneaked
scoreboard players operation #id.temp obl.id = @s obl.id

execute if predicate oblivion:items/hold.murasama.both unless score @s obl.murasama.time.taunt matches 1.. run function oblivion:items/abilities/murasama/enrage
execute if predicate oblivion:items/hold.yamato.both unless score @s obl.yamato.time.taunt matches 1.. run function oblivion:items/abilities/yamato/enrage

execute if predicate oblivion:items/hold.phantom_pickaxe if predicate oblivion:effects/has.invisibility unless entity @s[tag=obl.empowered.phantom_pickaxe] run function oblivion:items/abilities/phantom_pickaxe/ability
execute if predicate oblivion:items/hold.phantom_pickaxe unless predicate oblivion:effects/has.invisibility unless entity @s[tag=obl.empowered.phantom_pickaxe] run function oblivion:items/abilities/phantom_pickaxe/ability.fail

execute if entity @s[tag=obl.equipped.accs.oblivion_monocle,tag=obl.temp.found_entity] run function oblivion:items/accs/oblivion_monocle/double_sneak
execute if entity @s[tag=obl.equipped.accs.shard_of_time] unless score @s obl.shard_of_time.cd matches 1.. if entity @e[type=marker,tag=obl.shard_of_time.copy,predicate=oblivion:matching_score] run function oblivion:items/accs/shard_of_time/double_sneak
