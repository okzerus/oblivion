#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################

###   S E T   I D
function oblivion:tech/player/set_id
scoreboard players operation #id.temp obl.id = @s obl.id


###   S E T   S C O R E S
function oblivion:tech/player/set_scores


###   S E T   A D V A N C E M E N T S
function oblivion:tech/player/set_advancements


###   M A T E R I A L I Z E
tag @s add obl.player.materializing
scoreboard players set @s obl.materializing 2400
execute positioned ~ ~5 ~ align xyz run summon marker ~.5 ~ ~.5 {Tags:["obl.player_materialization"]}
setblock ~ ~6 ~ minecraft:air destroy
setblock ~ ~5 ~ minecraft:air destroy
setblock ~ ~4 ~ minecraft:barrier destroy
scoreboard players operation @e[type=minecraft:marker,limit=1,sort=nearest] obl.id = @s obl.id
playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2 0.7
playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 0.7

###   E N D
tag @s add obl.first_join
