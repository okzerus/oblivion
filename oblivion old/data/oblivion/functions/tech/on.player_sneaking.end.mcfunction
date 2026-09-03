###   C L E A N U P
execute unless entity @s[tag=obl.double_sneaked] run scoreboard players set @s obl.double_sneak.time 4
tag @s remove obl.double_sneaked
scoreboard players set @s obl.player_sneaking 0
execute if score @s obl.yamato.startup.ripper matches 1.. run effect clear @s darkness
scoreboard players set @s obl.yamato.startup.ripper 0
scoreboard players set @s obl.monocle.time 0

###   F U N C T I O N S
execute if score @s obl.process.cursed_armor_sword matches 1.. run function oblivion:items/abilities/cursed_armor_sword/cd