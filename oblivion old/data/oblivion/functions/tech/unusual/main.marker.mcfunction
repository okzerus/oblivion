###   I D   M A T C H I N G
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=obl.circling_unusual.armor_stand] run tag @e[type=armor_stand,limit=1,sort=nearest,predicate=oblivion:matching_score] add obl.temp.unusual_effects
execute unless entity @s[tag=obl.circling_unusual.armor_stand] run tag @p[predicate=oblivion:matching_score] add obl.temp.unusual_effects
execute if entity @e[type=player,tag=obl.temp.unusual_effects,predicate=oblivion:is.sneaking] run kill @s
execute if entity @e[type=player,tag=obl.temp.unusual_effects,tag=obl.gamemode.spectator] run kill @s
execute if entity @e[type=player,tag=obl.temp.unusual_effects,tag=obl.dead] run kill @s

###   C I R C L I N G
execute if entity @s[tag=!obl.circling_speed.2,tag=!obl.circling_speed.3] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~3 0
execute if entity @s[tag=obl.circling_speed.2] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~6 0
execute if entity @s[tag=obl.circling_speed.3] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~12 0
execute if entity @s[tag=!obl.circling_speed.2,tag=!obl.circling_speed.3,tag=obl.circling.reverse] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~-3 0
execute if entity @s[tag=obl.circling_speed.2,tag=obl.circling.reverse] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~-6 0
execute if entity @s[tag=obl.circling_speed.3,tag=obl.circling.reverse] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run tp @s ~ ~ ~ ~-12 0

########################################################################  A  D  D  ##############################################################################

###   H E L M E T
execute if entity @s[tag=obl.unusual.helmet.nebula] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/nebula
execute if entity @s[tag=obl.unusual.helmet.flame_shield] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/flame_shield
execute if entity @s[tag=obl.unusual.helmet.the_sun] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/the_sun
execute if entity @s[tag=obl.unusual.helmet.ashes] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/ashes
execute if entity @s[tag=obl.unusual.helmet.hatred] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/hatred
execute if entity @s[tag=obl.unusual.helmet.love] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/love
execute if entity @s[tag=obl.unusual.helmet.pink_orbit] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/pink_orbit
execute if entity @s[tag=obl.unusual.helmet.ice_and_fire] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/ice_and_fire
execute if entity @s[tag=obl.unusual.helmet.zodiac.aquarius] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/aquarius
execute if entity @s[tag=obl.unusual.helmet.zodiac.aries] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/aries
execute if entity @s[tag=obl.unusual.helmet.zodiac.cancer] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/cancer
execute if entity @s[tag=obl.unusual.helmet.zodiac.capricorn] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/capricorn
execute if entity @s[tag=obl.unusual.helmet.zodiac.gemini] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/gemini
execute if entity @s[tag=obl.unusual.helmet.zodiac.leo] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/leo
execute if entity @s[tag=obl.unusual.helmet.zodiac.libra] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/libra
execute if entity @s[tag=obl.unusual.helmet.zodiac.pisces] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/pisces
execute if entity @s[tag=obl.unusual.helmet.zodiac.sagittarius] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/sagittarius
execute if entity @s[tag=obl.unusual.helmet.zodiac.scorpio] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/scorpio
execute if entity @s[tag=obl.unusual.helmet.zodiac.taurus] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/taurus
execute if entity @s[tag=obl.unusual.helmet.zodiac.virgo] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] positioned ^ ^2.5 ^.75 rotated as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/zodiac/virgo
###   C H E S T P L A T E
## ZERO
###   L E G G I N G S
execute if entity @s[tag=obl.unusual.leggings.nebula] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/nebula
execute if entity @s[tag=obl.unusual.leggings.oblivion] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/oblivion/main
execute if entity @s[tag=obl.unusual.leggings.raging_flames] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/raging_flames
execute if entity @s[tag=obl.unusual.leggings.raging_blue_flames] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/raging_blue_flames
execute if entity @s[tag=obl.unusual.leggings.raging_souls] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/raging_souls
execute if entity @s[tag=obl.unusual.leggings.raging_black_souls] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/raging_black_souls
execute if entity @s[tag=obl.unusual.leggings.white_wave] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/white_wave
execute if entity @s[tag=obl.unusual.leggings.ice_and_fire] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/ice_and_fire
execute if entity @s[tag=obl.unusual.leggings.totem] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/totem
execute if entity @s[tag=obl.unusual.leggings.magika] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/magika
execute if entity @s[tag=obl.unusual.leggings.yin_yang] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/leggings/yin_yang
###   B O O T S
## ZERO

####################################################################  R  E  M  O  V  E  #########################################################################

###   H E L M E T
execute if entity @s[tag=obl.unusual.helmet.nebula] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/nebula,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.flame_shield] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/flame_shield,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.the_sun] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/the_sun,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.ashes] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/ashes,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.hatred] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/hatred,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.love] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/love,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.pink_orbit] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/pink_orbit,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.ice_and_fire] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/ice_and_fire,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.aquarius] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/aquarius,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.aries] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/aries,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.cancer] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/cancer,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.capricorn] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/capricorn,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.gemini] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/gemini,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.leo] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/leo,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.libra] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/libra,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.pisces] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/pisces,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.sagittarius] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/sagittarius,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.scorpio] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/scorpio,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.taurus] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/taurus,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.helmet.zodiac.virgo] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/helmet/zodiac/virgo,tag=obl.temp.unusual_effects,limit=1] run kill @s
###   C H E S T P L A T E
## ZERO
###   L E G G I N G S
execute if entity @s[tag=obl.unusual.leggings.nebula] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/nebula,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.oblivion] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/oblivion,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.raging_flames] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/raging_flames,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.raging_blue_flames] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/raging_blue_flames,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.raging_souls] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/raging_souls,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.raging_black_souls] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/raging_black_souls,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.white_wave] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/white_wave,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.ice_and_fire] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/ice_and_fire,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.totem] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/totem,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.magika] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/magika,tag=obl.temp.unusual_effects,limit=1] run kill @s
execute if entity @s[tag=obl.unusual.leggings.yin_yang] unless entity @e[type=#oblivion:circling_unusual,predicate=oblivion:unusual/leggings/yin_yang,tag=obl.temp.unusual_effects,limit=1] run kill @s
###   B O O T S
## ZERO

execute unless entity @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects] run kill @s
#################################################################################################################################################################

###   C L E A N U P
tag @e[type=#oblivion:circling_unusual] remove obl.temp.unusual_effects