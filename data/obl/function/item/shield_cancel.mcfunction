###   С П И С О К   Щ И Т О В
# 

###   О Т Л А Д К А
tellraw @s[tag=obl.debug] [{"text":"Отжал щит!"}]

###   П А Р И Р О В А Н И Е
execute if entity @s[tag=obl.parry_success.direct] run function obl:tech/parrying/direct/reflect
execute if entity @s[tag=obl.parry_success.projectile] run function obl:tech/parrying/projectile/reflect

###   С П Е Ц Э Ф Ф Е К Т Ы
function obl:tech/parrying/svfx/sfx.shield_down

###   О Ч И С Т К А
tag @s remove obl.can_parry
tag @s remove obl.can_parry
tag @s remove obl.parry_success
tag @s remove obl.parry_success.direct
tag @s remove obl.parry_success.projectile
scoreboard players set @s obl.using_shield 0