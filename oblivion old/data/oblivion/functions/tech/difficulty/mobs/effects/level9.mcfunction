###   D I F F I C U L T Y   B U F F

effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:health_boost infinite 3 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:strength infinite 1 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:speed infinite 1 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:regeneration infinite 0 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders,type=!phantom] minecraft:fire_resistance infinite 0 true
#                                                                you're welcome

execute if entity @s[type=creeper] run data merge entity @s {Fuse:45,ExplosionRadius:5}

enchant @s power 4
enchant @s sharpness 4
enchant @s unbreaking 3
enchant @s punch 1
enchant @s knockback 1
enchant @s flame 1
enchant @s fire_aspect 1

###   H E A L   U P
# (useful for Zombie Leaders, and.. uh..)

execute if entity @s[type=#oblivion:undead] run effect give @s minecraft:instant_damage 1 20 true
execute if entity @s[type=!#oblivion:undead] run effect give @s minecraft:instant_health 1 20 true

tag @s add obl.difficultychanged