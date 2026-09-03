# Randomizer

function oblivion:rng
execute if score randomizer obl.rng matches 1..45 as @e[nbt={HurtTime:10s}] at @s run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 50
execute if score randomizer obl.rng matches 1..45 as @e[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 1..45 as @e[nbt={HurtTime:10s}] at @s run effect give @s slowness 3 1
execute if score randomizer obl.rng matches 46..73 as @e[nbt={HurtTime:10s}] at @s run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 50
execute if score randomizer obl.rng matches 46..73 as @e[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 46..73 as @e[nbt={HurtTime:10s}] at @s run effect give @s slowness 3 2
execute if score randomizer obl.rng matches 74..90 as @e[nbt={HurtTime:10s}] at @s run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 50
execute if score randomizer obl.rng matches 74..90 as @e[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 74..90 as @e[nbt={HurtTime:10s}] at @s run effect give @s slowness 3 3
execute if score randomizer obl.rng matches 91.. as @e[nbt={HurtTime:10s}] at @s run particle block ice ~ ~1 ~ 0.3 0.6 0.3 0 50
execute if score randomizer obl.rng matches 91.. as @e[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute if score randomizer obl.rng matches 91.. as @e[nbt={HurtTime:10s}] at @s run effect give @s slowness 3 4
advancement revoke @s only oblivion:items/icebowhit