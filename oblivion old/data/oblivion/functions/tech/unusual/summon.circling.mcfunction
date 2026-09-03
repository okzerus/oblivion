###   S T O R E   I D
execute if entity @s[type=player] run summon marker ~ ~ ~ {Tags:["obl.circling_unusual","obl.temp.awaiting_modify"]}
execute if entity @s[type=armor_stand] run summon marker ~ ~ ~ {Tags:["obl.circling_unusual","obl.circling_unusual.armor_stand","obl.temp.awaiting_modify"]}
scoreboard players operation @e[type=marker,tag=obl.temp.awaiting_modify] obl.id = @s obl.id
scoreboard players operation #id.temp obl.id = @s obl.id
tag @e[type=marker,predicate=oblivion:matching_score,tag=!obl.temp.awaiting_modify] add obl.temp.score_check

########################################################################  T  A  G  ##############################################################################
###   H E L M E T
execute if predicate oblivion:unusual/helmet/nebula unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.nebula] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.nebula
execute if predicate oblivion:unusual/helmet/flame_shield unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.flame_shield] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.flame_shield
execute if predicate oblivion:unusual/helmet/the_sun unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.the_sun] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.the_sun
execute if predicate oblivion:unusual/helmet/ice_and_fire unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.ice_and_fire] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.ice_and_fire
execute if predicate oblivion:unusual/helmet/ashes unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.ashes] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.ashes
execute if predicate oblivion:unusual/helmet/hatred unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.hatred] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.hatred
execute if predicate oblivion:unusual/helmet/love unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.love] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.love
execute if predicate oblivion:unusual/helmet/pink_orbit unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.pink_orbit] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.pink_orbit
execute if predicate oblivion:unusual/helmet/zodiac/aquarius unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.aquarius] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.aquarius
execute if predicate oblivion:unusual/helmet/zodiac/aries unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.aries] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.aries
execute if predicate oblivion:unusual/helmet/zodiac/cancer unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.cancer] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.cancer
execute if predicate oblivion:unusual/helmet/zodiac/capricorn unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.capricorn] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.capricorn
execute if predicate oblivion:unusual/helmet/zodiac/gemini unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.gemini] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.gemini
execute if predicate oblivion:unusual/helmet/zodiac/leo unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.leo] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.leo
execute if predicate oblivion:unusual/helmet/zodiac/libra unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.libra] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.libra
execute if predicate oblivion:unusual/helmet/zodiac/pisces unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.pisces] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.pisces
execute if predicate oblivion:unusual/helmet/zodiac/sagittarius unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.sagittarius] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.sagittarius
execute if predicate oblivion:unusual/helmet/zodiac/scorpio unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.scorpio] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.scorpio
execute if predicate oblivion:unusual/helmet/zodiac/taurus unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.taurus] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.taurus
execute if predicate oblivion:unusual/helmet/zodiac/virgo unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.helmet.zodiac.virgo] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.helmet.zodiac.virgo
###   C H E S T P L A T E
## ZERO
###   L E G G I N G S
execute if predicate oblivion:unusual/leggings/nebula unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.nebula] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.nebula
execute if predicate oblivion:unusual/leggings/oblivion unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.oblivion] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.oblivion
execute if predicate oblivion:unusual/leggings/raging_flames unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_flames] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.raging_flames
execute if predicate oblivion:unusual/leggings/raging_blue_flames unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_blue_flames] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.raging_blue_flames
execute if predicate oblivion:unusual/leggings/raging_souls unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_souls] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.raging_souls
execute if predicate oblivion:unusual/leggings/raging_black_souls unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.raging_black_souls] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.raging_black_souls
execute if predicate oblivion:unusual/leggings/white_wave unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.white_wave] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.white_wave
execute if predicate oblivion:unusual/leggings/ice_and_fire unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.ice_and_fire] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.ice_and_fire
execute if predicate oblivion:unusual/leggings/totem unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.totem] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.totem
execute if predicate oblivion:unusual/leggings/magika unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.magika] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.magika
execute if predicate oblivion:unusual/leggings/yin_yang unless entity @e[type=marker,tag=obl.temp.score_check,tag=obl.unusual.leggings.yin_yang] run tag @e[type=marker,tag=obl.temp.awaiting_modify] add obl.unusual.leggings.yin_yang
###   B O O T S
## ZERO


##################################################################  M  O  D  I  F  Y  ###########################################################################
tag @e[type=marker,tag=obl.temp.awaiting_modify,tag=obl.unusual.leggings.ice_and_fire] add obl.circling.reverse
tag @e[type=marker,tag=obl.temp.awaiting_modify,tag=obl.unusual.leggings.ice_and_fire] add obl.circling_speed.2
tag @e[type=marker,tag=obl.temp.awaiting_modify,tag=obl.unusual.leggings.nebula] add obl.circling.reverse
tag @e[type=marker,tag=obl.temp.awaiting_modify,tag=obl.unusual.leggings.nebula] add obl.circling_speed.2
tag @e[type=marker,tag=obl.temp.awaiting_modify,tag=obl.unusual.helmet.nebula] add obl.circling_speed.3

#################################################################################################################################################################

###   C L E A N U P
tag @e[type=marker] remove obl.temp.score_check
tag @e[type=marker] remove obl.temp.awaiting_modify