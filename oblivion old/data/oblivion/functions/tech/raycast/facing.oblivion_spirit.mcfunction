particle dust 0.8 0 0 0.3 ^ ^ ^ 0 0 0 0 1 force
particle dust 0.8 0 0 0.3 ^ ^ ^-.15 0 0 0 0 1 force
particle dust 0.8 0 0 0.3 ^ ^ ^.15 0 0 0 0 1 force
execute unless entity @e[type=zombie,tag=obl.oblivionspirit,distance=..2.3] if entity @e[type=marker,tag=obl.altar,distance=..20] positioned ^ ^ ^.3 run function oblivion:tech/raycast/facing.oblivion_spirit