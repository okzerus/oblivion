execute if entity @s[tag=obl.atlantis.in_water,tag=!obl.atlantis.return] run function oblivion:items/atlantis/in_water
execute unless entity @s[tag=obl.atlantis.in_water] run function oblivion:items/atlantis/not_in_water

execute if predicate oblivion:items/atlantis.in_water run tag @s add obl.atlantis.in_water
execute unless predicate oblivion:items/atlantis.in_water run tag @s remove obl.atlantis.in_water

execute if entity @a[scores={obl.atlantis.used=1..},distance=60..] unless entity @s[tag=obl.atlantis.return] run function oblivion:items/atlantis/return
execute if entity @s[nbt={inGround:1b},tag=!obl.atlantis.return] run function oblivion:items/atlantis/return