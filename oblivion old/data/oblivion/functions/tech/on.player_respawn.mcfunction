tag @s remove obl.dead
tag @s add obl.alive

###   R E M O V E   E N C H A N T M E N T
execute if entity @s[tag=obl.enchanted] run function oblivion:tech/altars/rituals/player_enchantment/remove