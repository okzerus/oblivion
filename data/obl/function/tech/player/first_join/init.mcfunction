#################################################################################################################################################################
#     ____                ____                _                    _____              __      __              _____                ____                _   _    #
#    / __ \              |  _ \              | |                  |_   _|             \ \    / /             |_   _|              / __ \              | \ | |   #
#   | |  | |             | |_) |             | |                    | |                \ \  / /                | |               | |  | |             |  \| |   #
#   | |  | |             |  _ <              | |                    | |                 \ \/ /                 | |               | |  | |             | . ` |   #
#   | |__| |             | |_) |             | |____               _| |_                 \  /                 _| |_              | |__| |             | |\  |   #
#    \____/              |____/              |______|             |_____|                 \/                 |_____|              \____/              |_| \_|   #
#                                                                                                                                                               #
#################################################################################################################################################################



###   У С Т А Н О В И Т Ь   I D
function obl:tech/player/first_join/set_id
scoreboard players operation #id.temp obl.id = @s obl.id



###   У С Т А Н О В И Т Ь   С Ч Е Т А
#function obl:tech/player/first_join/set_scores



###   У С Т А Н О В И Т Ь   А Ч И В К И
#function obl:tech/player/first_join/set_advancements



###   М А Т Е Р И А Л И З А Ц И Я
#tag @s add obl.player.materializing
#scoreboard players set @s obl.materializing 2400
#execute positioned ~ ~5 ~ align xyz run summon marker ~.5 ~ ~.5 {Tags:["obl.player_materialization"]}
#setblock ~ ~6 ~ minecraft:air destroy
#setblock ~ ~5 ~ minecraft:air destroy
#setblock ~ ~4 ~ minecraft:barrier destroy
#scoreboard players operation @e[type=minecraft:marker,limit=1,sort=nearest] obl.id = @s obl.id
#playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2 0.7
#playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 0.7



###   К О Н Е Ц
tag @s add obl.first_join
