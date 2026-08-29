###   С П И С О К   Щ И Т О В
# 

###   П А Р И Р О В А Н И Е
tag @s add obl.temp.parried
execute if entity @s[tag=obl.temp.parried_direct] run function obl:tech/parrying/direct/reflect
execute if entity @s[tag=obl.temp.parried_projectile] run function obl:tech/parrying/projectile/reflect

###   О Ч И С Т К А
tag @s remove obl.temp.parried
tag @s remove obl.temp.parried_direct
tag @s remove obl.temp.parried_projectile
scoreboard players set @s obl.using_shield 0