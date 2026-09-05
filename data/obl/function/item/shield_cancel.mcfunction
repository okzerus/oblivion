# Из on.player.1t, при отпускании щита

###   Ф У Н К Ц И Я
scoreboard players set @s obl.using_shield 0
scoreboard players set @s obl.shield_preparing 0
scoreboard players set @s obl.parry.tick 0

###   О Т Р А Ж Е Н И Е
execute if entity @s[tag=obl.parry_success.direct] run function obl:tech/parrying/direct/reflect
execute if entity @s[tag=obl.parry_success.projectile] run function obl:tech/parrying/projectile/reflect

###   П Р Е Д У П Р Е Ж Д Е Н И Е   О   С П А М Е
execute unless score @s obl.parry.cd matches 1.. run scoreboard players add @s obl.parry.spam_cd 7
execute if score @s obl.parry.spam_cd matches 7.. unless score @s obl.parry.cd matches 1.. run function obl:tech/parrying/spam.announce

###   О Ч И С Т К А
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct
tag @s remove obl.parry_success.projectile
tag @s remove obl.can_parry.projectile
tag @s remove obl.can_parry.direct
tag @s remove obl.disable.direct_parry
