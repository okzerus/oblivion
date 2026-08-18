###   C H E C K
scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=marker,predicate=obl:matching_score] add obl.temp.score_check

########################################################################  T  A  G  ##############################################################################
###   H E L M E T
execute if predicate obl:unusual/helmet/nebula unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.nebula] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/flame_shield unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.flame_shield] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/the_sun unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.the_sun] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/ice_and_fire unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.ice_and_fire] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/ashes unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.ashes] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/hatred unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.hatred] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/love unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.love] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/pink_orbit unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.pink_orbit] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/aquarius unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.aquarius] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/aries unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.aries] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/cancer unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.cancer] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/capricorn unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.capricorn] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/gemini unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.gemini] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/leo unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.leo] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/libra unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.libra] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/pisces unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.pisces] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/sagittarius unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.sagittarius] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/scorpio unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.scorpio] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/taurus unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.taurus] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/helmet/zodiac/virgo unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.virgo] run function obl:tech/unusual/summon.circling
###   C H E S T P L A T E
## ZERO
###   L E G G I N G S
execute if predicate obl:unusual/leggings/nebula unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.nebula] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/oblivion unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.obl] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/raging_flames unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_flames] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/raging_blue_flames unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_blue_flames] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/raging_souls unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_souls] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/raging_black_souls unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_black_souls] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/white_wave unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.white_wave] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/ice_and_fire unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.ice_and_fire] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/totem unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.totem] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/magika unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.magika] run function obl:tech/unusual/summon.circling
execute if predicate obl:unusual/leggings/yin_yang unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.yin_yang] run function obl:tech/unusual/summon.circling
###   B O O T S
## ZERO

#################################################################################################################################################################

###   C L E A N U P
tag @e[type=marker] remove obl.temp.score_check