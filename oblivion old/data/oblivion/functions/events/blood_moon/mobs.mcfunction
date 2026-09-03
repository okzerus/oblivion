
# Randomizer
function oblivion:rng

execute if score randomizer obl.rng matches 1..50 run function oblivion:events/blood_moon/mobs/mob1

execute if score randomizer obl.rng matches 1..25 run function oblivion:events/blood_moon/mobs/mob2
execute if score randomizer obl.rng matches 26..50 run function oblivion:events/blood_moon/mobs/mob3
execute if score randomizer obl.rng matches 51..55 run function oblivion:events/blood_moon/mobs/mob4
execute if score randomizer obl.rng matches 56..60 run function oblivion:events/blood_moon/mobs/mob5
execute if score randomizer obl.rng matches 61..70 run function oblivion:events/blood_moon/mobs/mob6
execute if score randomizer obl.rng matches 71..80 run function oblivion:events/blood_moon/mobs/mob7
execute if score randomizer obl.rng matches 81..90 run function oblivion:events/blood_moon/mobs/mob8
execute if score randomizer obl.rng matches 91..100 run function oblivion:events/blood_moon/mobs/mob9

execute at @s run function oblivion:events/blood_moon/spread

execute if score randomizer obl.rng matches 1..25 as @e[tag=obl.blood_mob,tag=!obl.lightning_buffing,tag=!obl.devil,tag=!obl.blood_soul,sort=random,limit=1,distance=..100] run tag @s add obl.lightning_buffing