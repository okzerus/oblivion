# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..40 at @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] run particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 30 force
execute if score randomizer obl.rng matches 1..40 at @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1.6
execute if score randomizer obl.rng matches 1..5 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] mining_fatigue 10 1 false
execute if score randomizer obl.rng matches 1..5 run scoreboard players set @s cs.fatigue 1
execute if score randomizer obl.rng matches 6..10 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] slowness 10 1 false
execute if score randomizer obl.rng matches 6..10 run scoreboard players set @s cs.slowness 1
execute if score randomizer obl.rng matches 11..15 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] nausea 10 1 false
execute if score randomizer obl.rng matches 11..15 run scoreboard players set @s cs.nausea 1
execute if score randomizer obl.rng matches 16..20 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] blindness 10 1 false
execute if score randomizer obl.rng matches 16..20 run scoreboard players set @s cs.blindness 1
execute if score randomizer obl.rng matches 21..25 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] weakness 10 1 false
execute if score randomizer obl.rng matches 21..25 run scoreboard players set @s cs.weakness 1
execute if score randomizer obl.rng matches 26..30 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] hunger 10 1 false
execute if score randomizer obl.rng matches 26..30 run scoreboard players set @s cs.hunger 1
execute if score randomizer obl.rng matches 31..35 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] poison 10 1 false
execute if score randomizer obl.rng matches 31..35 run scoreboard players set @s cs.poison 1
execute if score randomizer obl.rng matches 36..40 run effect give @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] wither 10 1 false
execute if score randomizer obl.rng matches 36..40 run scoreboard players set @s cs.wither 1

execute if score @s cs.fatigue matches 1 if score @s cs.slowness matches 1 if score @s cs.nausea matches 1 if score @s cs.blindness matches 1 if score @s cs.weakness matches 1 if score @s cs.hunger matches 1 if score @s cs.poison matches 1 if score @s cs.wither matches 1 run advancement grant @s only oblivion:advancements/weapons/swords/cursed_sword_hit


advancement revoke @s only oblivion:items/cursedsword