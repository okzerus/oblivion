execute if score @s obl.altar.ambient.1 matches 0 run playsound minecraft:block.beacon.activate ambient @a[distance=..19] ~ ~ ~ 1.5 0
execute if score @s obl.altar.ambient.1 matches 0 run scoreboard players set #particle_type oblivion 2
execute if score @s obl.altar.ambient.1 matches 0 rotated 90 -90 run function ofl:start
execute if score @s obl.altar.ambient.1 matches 0 as @p[distance=...5,tag=obl.player_enchanting.process] at @s run function oblivion:tech/altars/rituals/player_enchantment/roll


scoreboard players add @s obl.altar.ambient.1 1

execute if score @s obl.altar.ambient.1 matches 3.. if score @s obl.altar.ambient_speed matches 7 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 7.. if score @s obl.altar.ambient_speed matches 6 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 12.. if score @s obl.altar.ambient_speed matches 5 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 16.. if score @s obl.altar.ambient_speed matches 4 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 20.. if score @s obl.altar.ambient_speed matches 3 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 24.. if score @s obl.altar.ambient_speed matches 2 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 28.. if score @s obl.altar.ambient_speed matches 1 run scoreboard players set @s obl.altar.ambient.1 0
execute if score @s obl.altar.ambient.1 matches 30.. if score @s obl.altar.ambient_speed matches 0 run scoreboard players set @s obl.altar.ambient.1 0