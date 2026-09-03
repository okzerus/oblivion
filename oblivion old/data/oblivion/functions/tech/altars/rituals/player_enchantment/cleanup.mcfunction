title @s clear
title @s times 20 100 20
title @s actionbar ""
execute if entity @s[tag=obl.player_enchanting.process] run function oblivion:tech/altars/rituals/player_enchantment/enchant.bad
tag @s remove obl.player_enchanting.process
tag @s remove obl.player_enchanting.preparing