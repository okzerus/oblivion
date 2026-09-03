execute unless block ~ ~ ~ #oblivion:non_solid run tag @s add obl.black_death.tentacle.found

execute unless entity @s[distance=..15] run kill @s
execute unless entity @s[tag=obl.black_death.tentacle.found] if entity @s[distance=..15] positioned ^ ^ ^.5 run function oblivion:tech/raycast/black_death.tentacle.check