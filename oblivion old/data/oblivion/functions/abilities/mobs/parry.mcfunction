execute on attacker run tag @s add obl.temp.player_parried
effect give @p[tag=obl.temp.player_parried] weakness 2 4 true
effect give @p[tag=obl.temp.player_parried] slowness 2 4 true
effect give @p[tag=obl.temp.player_parried] mining_fatigue 2 4 true
effect give @p[tag=obl.temp.player_parried] blindness 1 4 true
damage @p[tag=obl.temp.player_parried] 8 oblivion:parry by @s
execute as @p[tag=obl.temp.player_parried] at @s run tp @s ~ ~ ~ ~ ~-40
execute at @p[tag=obl.temp.player_parried] run particle minecraft:end_rod ~ ~.5 ~ 0.3 0.6 0.3 0 20
execute at @p[tag=obl.temp.player_parried] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.6 2
execute at @p[tag=obl.temp.player_parried] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 0.6 1.3

effect give @s strength 1 0 true
effect give @s speed 1 2 true
effect give @s haste 1 0 true
effect give @s[type=!#oblivion:undead] instant_health 1 1 true
effect give @s[type=#oblivion:undead] instant_damage 1 1 true
playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 0.6 2
playsound minecraft:entity.experience_orb.pickup hostile @a ~ ~ ~ 0.6 2
playsound minecraft:block.bell.use hostile @a ~ ~ ~ 0.6 1.6
particle minecraft:happy_villager ~ ~.5 ~ 0.3 0.6 0.3 0 20

tag @a remove obl.temp.player_parried