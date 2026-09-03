###   I D   M A T C H I N G
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=obl.circling_unusual.armor_stand] run tag @e[type=armor_stand,limit=1,sort=nearest,predicate=oblivion:matching_score] add obl.temp.unusual_effects
execute unless entity @s[tag=obl.circling_unusual.armor_stand] run tag @p[predicate=oblivion:matching_score] add obl.temp.unusual_effects

########################################################################  A  D  D  ##############################################################################

###   H E L M E T
execute if entity @s[tag=obl.unusual.helmet.love] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/love.5t
execute if entity @s[tag=obl.unusual.helmet.hatred] positioned as @e[type=#oblivion:circling_unusual,tag=obl.temp.unusual_effects,limit=1] run function oblivion:tech/unusual/effects/helmet/hatred.5t
###   C H E S T P L A T E
## ZERO
###   L E G G I N G S
## ZERO
###   B O O T S
## ZERO

#################################################################################################################################################################

###   C L E A N U P
tag @e[type=#oblivion:circling_unusual] remove obl.temp.unusual_effects