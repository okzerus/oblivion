execute if entity @s[tag=obl.debug] run tag @s add obl.temp.disable_debug
execute if entity @s[tag=obl.temp.disable_debug] run tag @s remove obl.debug
execute unless entity @s[tag=obl.temp.disable_debug] run tag @s add obl.debug
tag @s remove obl.temp.disable_debug