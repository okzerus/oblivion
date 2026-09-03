# Randomizer

function oblivion:rng
execute if score randomizer obl.rng matches 1..8 as @e[nbt={HurtTime:10s},tag=!devil] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0 30
execute if score randomizer obl.rng matches 1..8 as @e[nbt={HurtTime:10s},tag=!devil] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0
execute if score randomizer obl.rng matches 1..8 as @e[nbt={HurtTime:10s},tag=!devil] at @s run tp @s ~ ~-10 ~
advancement revoke @s only oblivion:items/hellbowhit