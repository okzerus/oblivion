tag @p[distance=..12,tag=!obl.invulnerable] add obl.temp.target

execute if entity @p[distance=5..12] run effect give @s minecraft:slowness 5 99 true
execute unless entity @p[distance=5..12] run effect clear @s minecraft:slowness

execute if entity @p[tag=obl.temp.target] unless entity @s[tag=obl.ghost_ship.marauder.melee] unless score @s obl.mob.ability_cd matches 1.. run function oblivion:abilities/mobs/ghost_ship/marauder.check

execute if entity @s[tag=obl.ghost_ship.marauder.range] if entity @p[distance=..5,tag=obl.temp.target] run function oblivion:abilities/mobs/ghost_ship/marauder.switch
execute if entity @s[tag=obl.ghost_ship.marauder.melee] if entity @p[distance=5.001..,tag=obl.temp.target] run function oblivion:abilities/mobs/ghost_ship/marauder.switch

tag @a remove obl.temp.target