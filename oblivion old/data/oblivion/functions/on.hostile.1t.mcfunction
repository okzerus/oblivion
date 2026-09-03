###   M I S C
execute if entity @s[tag=obl.poisoninvul] run effect clear @s poison
execute if entity @s[tag=obl.witherinvul] run effect clear @s wither

execute if entity @s[tag=obl.leash_removal] run function oblivion:mobs/squad/leash_removal
execute if entity @s[tag=obl.leash_removal] run scoreboard players remove @s obl.leash_removal 1

###   O B L I V I O N   E F F E C T S
execute if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_tick
execute if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/tick
execute if entity @s[tag=obl.stunned] run function oblivion:tech/stun_tick
execute if entity @s[tag=obl.cursed] run function oblivion:tech/curse_tick
execute if entity @s[tag=obl.bleeding] run function oblivion:tech/bleeding_tick