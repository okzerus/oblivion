setblock ~ ~-1 ~ reinforced_deepslate
setblock ~ ~1 ~ reinforced_deepslate
setblock ~ ~ ~-1 reinforced_deepslate
setblock ~ ~ ~1 reinforced_deepslate
setblock ~-1 ~ ~ reinforced_deepslate
setblock ~1 ~ ~ reinforced_deepslate
execute facing entity @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] eyes rotated ~ 0 run setblock ^ ^ ^1 air destroy
tag @s add obl.summoning
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.6
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 0.5
execute as @a[distance=..100] run function oblivion:music/end
tag @a[distance=..100] remove obl.near.black_death_memorial
effect clear @a[distance=..100] darkness