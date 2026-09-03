# from functions/on.player.1t


###   F U N C T I O N
scoreboard players set @s obl.shield_using 0
scoreboard players set @s obl.shield_cleanup 0
scoreboard players set @s obl.parry.tick 0


###   R E F L E C T
tag @s add obl.temp.end_of_blocking
execute if entity @s[tag=obl.parry_success.direct] run function oblivion:tech/parrying/direct/reflect
execute if entity @s[tag=obl.parry_success.projectile] run function oblivion:tech/parrying/projectile/reflect


###   A V O I D   S P A M M I N G
execute unless score @s obl.parry.cd matches 1.. run scoreboard players add @s obl.parry.spam_cd 7
execute if score @s obl.parry.spam_cd matches 7.. unless score @s obl.parry.cd matches 1.. run function oblivion:tech/parrying/spam.announce


###   C L E A N U P
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct
tag @s remove obl.parry_success.projectile
tag @s remove obl.can_parry.projectile
tag @s remove obl.can_parry.direct
tag @s remove obl.disable.direct_parry
tag @s remove obl.temp.end_of_blocking