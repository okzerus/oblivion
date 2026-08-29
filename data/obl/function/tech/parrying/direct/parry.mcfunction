###   O N   V I C T I M
scoreboard players operation @e[type=#obl:all_mobs,tag=obl.temp.found] obl.id.reflect = @s obl.id


###   O N   P L A Y E R
tag @s add obl.parry_success
tag @s add obl.parry_success.direct
scoreboard players set @s obl.shield_preparing 16
tag @s remove obl.can_parry.direct
effect give @s slowness 1 9 true
effect give @s blindness 5 9 true


###   S O U N D
tag @s add obl.parry.sound_pitch
scoreboard players set @s obl.parry.after_tick 40
scoreboard players add @s obl.parry.count 1
function obl:tech/parrying/sound


###   C L E A N U P
tag @e[type=#obl:all_mobs] remove obl.temp.to_parry
tag @e[type=#obl:all_mobs] remove obl.temp.found