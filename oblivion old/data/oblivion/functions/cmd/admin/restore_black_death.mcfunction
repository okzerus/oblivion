execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~ ~ ~ lava
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run scoreboard players set @s obl.phase_transition 0
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run tag @s remove obl.summoning
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~ ~-1 ~ reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~ ~ ~-1 reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~ ~ ~1 reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~-1 ~ ~ reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run setblock ~1 ~ ~ reinforced_deepslate
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run kill @e[type=magma_cube,limit=1,sort=nearest]
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run kill @e[type=minecraft:marker,tag=obl.black_death.tentacle,sort=nearest]
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=1,lit=true] replace minecraft:black_candle[candles=1,lit=false]
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=2,lit=true] replace minecraft:black_candle[candles=2,lit=false]
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=3,lit=true] replace minecraft:black_candle[candles=3,lit=false]
execute as @e[type=marker,tag=obl.black_death.spawn_point,limit=1,sort=nearest] at @s run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=4,lit=true] replace minecraft:black_candle[candles=4,lit=false]
bossbar remove oblivion:boss_health
execute as @s run function oblivion:music/end