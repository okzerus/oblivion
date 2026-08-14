#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

###   F I R S T   J O I N

###   P L A Y E R ' S   N B T   T O   S T O R A G E

###   W E A P O N   C D
execute if score @s obl.hit_cooldown matches 1.. run scoreboard players remove @s obl.hit_cooldown 1
tag @s remove obl.temp.success_hit

###   L I F E   T I C K

#################################################################################################################################################################

###   W A L K I N G   /   S P R I N T I N G   /   F A L L I N G

###   D E A T H   /   R E S P A W N

###   E F F E C T S

###   O B L I V I O N   E F F E C T S
## Scorchfield
execute if score @s obl.effect.buff.scorchfield.count matches 1.. run function obl:tech/effect/buff/scorchfield/tick
## Cleanup
execute unless score @s obl.effect.buff.scorchfield.count matches 1.. run tag @s remove obl.effect.buff.scorchfield

###   M I S C

#################################################################################################################################################################

###   . . .