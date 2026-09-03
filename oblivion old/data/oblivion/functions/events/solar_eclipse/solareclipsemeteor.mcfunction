execute unless entity @s[tag=obl.solmeteorspawned] run summon minecraft:armor_stand ~ ~-5 ~ {Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Tags:["solarmeteor"]}
execute unless entity @s[tag=obl.solmeteorspawned] run summon minecraft:armor_stand ~ ~-5 ~ {Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Tags:["solarmeteor"]}
execute unless entity @s[tag=obl.solmeteorspawned] run summon minecraft:armor_stand ~ ~-5 ~ {Invulnerable:1b,Silent:1b,Invisible:1b,NoGravity:1b,Tags:["solarmeteor"]}
spreadplayers ~ ~ 0 40 false @e[tag=solarmeteor,limit=3,sort=nearest,distance=..300]
tag @a[tag=!obl.solmeteorspawned] add obl.solmeteorspawned