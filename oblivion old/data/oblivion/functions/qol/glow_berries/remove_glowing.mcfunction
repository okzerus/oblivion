execute if entity @s[type=player] run effect clear @s glowing
execute if entity @s[type=#oblivion:all_mobs.no_player] run data merge entity @s {Glowing:0b}
execute if entity @s[type=item] run data merge entity @s {Glowing:0b}
tag @s remove obl.glow_berried
tag @s[type=player] remove obl.can_teleport
scoreboard players set @s obl.glowing.cd 0