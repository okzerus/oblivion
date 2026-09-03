###   V I S U A L
execute as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run particle minecraft:sweep_attack ~ ~.8 ~ 0.2 0.2 0.2 0 1 force
execute if score randomizer obl.rng matches 1..20 as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run playsound oblivion:misc.scythe_swing hostile @a ~ ~.8 ~ 1.4 1.3
execute if score randomizer obl.rng matches 21..40 as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run playsound oblivion:misc.scythe_swing hostile @a ~ ~.8 ~ 1.4 1.35
execute if score randomizer obl.rng matches 41..60 as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run playsound oblivion:misc.scythe_swing hostile @a ~ ~.8 ~ 1.4 1.4
execute if score randomizer obl.rng matches 61..80 as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run playsound oblivion:misc.scythe_swing hostile @a ~ ~.8 ~ 1.4 1.45
execute if score randomizer obl.rng matches 81..100 as @e[type=#oblivion:all_mobs,tag=obl.temp.hit,limit=1] at @s run playsound oblivion:misc.scythe_swing hostile @a ~ ~.8 ~ 1.4 1.5