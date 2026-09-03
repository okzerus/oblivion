###   F U N C T I O N
execute as @a at @s run function oblivion:time/reset_event_scoreboards

execute if score next.blood_moon oblivion matches 1 run function oblivion:events/start_blood_moon
execute if score next.pearl_moon oblivion matches 1 run function oblivion:events/start_pearl_moon
execute if score next.xmas_night oblivion matches 1 run function oblivion:events/start_xmas_night
execute if score next.gravigeddon oblivion matches 1 run function oblivion:events/start_gravigeddon

scoreboard players set obl.isday oblivion 0

execute if score great_day oblivion matches 1 run function oblivion:events/great_day/end
execute if score solar_eclipse oblivion matches 1 run function oblivion:events/solar_eclipse/end

execute as @a at @s run function oblivion:music/end

bossbar remove mothron
bossbar remove grinch

execute if score xmas_spirit.escaped oblivion matches 1 run scoreboard players add xmas_spirit.days oblivion 1
execute if score xmas_spirit.days oblivion matches 3 run function oblivion:events/xmas_night/xmas_spirit.left

scoreboard players set @a infectedvill 0