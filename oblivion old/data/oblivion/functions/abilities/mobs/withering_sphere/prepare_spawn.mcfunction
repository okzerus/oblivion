tag @s add obl.temp.triggered_withering_sphere
execute if entity @s[advancements={oblivion:tech/player_killed.wither=true}] run schedule function oblivion:abilities/mobs/withering_sphere/spawn_from.wither 1t
execute if entity @s[advancements={oblivion:tech/player_killed.wither_skeleton=true}] run schedule function oblivion:abilities/mobs/withering_sphere/spawn_from.wither_skeleton 1t

advancement revoke @s only oblivion:tech/player_killed.wither
advancement revoke @s only oblivion:tech/player_killed.wither_skeleton