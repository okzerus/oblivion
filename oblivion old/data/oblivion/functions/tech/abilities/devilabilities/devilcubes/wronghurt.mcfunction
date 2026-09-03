advancement revoke @s only oblivion:mobs/devil/wrongdevilcubehurt
scoreboard players add @e[tag=devil,limit=1] obl.devilcube 1
scoreboard players set @e[tag=devil,limit=1] abilities 0
tp @e[tag=obl.devilcube] ~ -256 ~
kill @e[tag=obl.devilcube]
data merge entity @e[tag=devil,limit=1] {NoAI:0b,Invulnerable:0b}
execute at @e[tag=devil,limit=1] run playsound minecraft:entity.enderman.scare master @a ~ ~ ~ 1 0.1
execute at @e[tag=devil,limit=1] run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 0.1
effect give @s blindness 2 0 true
summon lightning_bolt ~ ~ ~

execute unless score @e[tag=devil,limit=1] obl.devilcube matches 2.. as @e[tag=devil,limit=1] at @s run function oblivion:tech/abilities/devilabilities/devilcubes/wrong1
execute if score @e[tag=devil,limit=1] obl.devilcube matches 2 as @e[tag=devil,limit=1] at @s run function oblivion:tech/abilities/devilabilities/devilcubes/wrong2
execute if score @e[tag=devil,limit=1] obl.devilcube matches 3 as @e[tag=devil,limit=1] at @s run function oblivion:tech/abilities/devilabilities/devilcubes/wrong3