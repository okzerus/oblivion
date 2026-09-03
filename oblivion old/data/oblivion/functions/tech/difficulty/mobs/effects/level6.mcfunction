###   D I F F I C U L T Y   B U F F

effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:health_boost infinite 1 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:strength infinite 0 true
effect give @s[type=!creeper,type=!ghast,type=!#oblivion:raiders] minecraft:speed infinite 0 true

execute if entity @s[type=creeper] run data merge entity @s {Fuse:35,ExplosionRadius:4}

enchant @s power 1
enchant @s sharpness 1

###   H E A L   U P
# (useful for Zombie Leaders, and.. uh..)

execute if entity @s[type=#oblivion:undead] run effect give @s minecraft:instant_damage 1 20 true
execute if entity @s[type=!#oblivion:undead] run effect give @s minecraft:instant_health 1 20 true

tag @s add obl.difficultychanged