particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 60
particle minecraft:explosion ~ ~ ~ 0.9 0.9 0.9 0 6
particle minecraft:flame ~ ~ ~ 1.5 0 1.5 0 50
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5

scoreboard players operation #id.temp obl.id = @s obl.id
execute as @e[type=#oblivion:all_mobs.no_player,distance=..7] run damage @s 25 minecraft:player_explosion by @p[predicate=oblivion:matching_score]

kill @e[type=block_display,tag=obl.marauder.grenade,limit=1,sort=nearest]
kill @s