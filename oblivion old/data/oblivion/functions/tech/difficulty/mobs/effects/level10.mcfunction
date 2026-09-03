###   D I F F I C U L T Y   B U F F

effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:health_boost infinite 3 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:strength infinite 2 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:speed infinite 1 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:regeneration infinite 0 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:resistance infinite 0 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders,type=!phantom] minecraft:fire_resistance infinite 0 true
#                                                                you're welcome

execute if entity @s[type=creeper] run data merge entity @s {Fuse:45,ExplosionRadius:5}

enchant @s power 5
enchant @s sharpness 5
enchant @s unbreaking 3
enchant @s punch 2
enchant @s knockback 2
enchant @s flame 1
enchant @s fire_aspect 2

###   H E A L   U P
# (useful for Zombie Leaders, and.. uh..)

execute if entity @s[type=#oblivion:undead] run effect give @s minecraft:instant_damage 1 20 true
execute if entity @s[type=!#oblivion:undead] run effect give @s minecraft:instant_health 1 20 true

tag @s add obl.difficultychanged