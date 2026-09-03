forceload add 90002 90001
fill 90000 3 90000 90006 0 90002 minecraft:bedrock
fill 90005 1 90001 90001 3 90001 air
setblock 90003 1 90001 light
scoreboard players set obl.startup oblivion 1

summon minecraft:armor_stand 90001.5 1.00 90001.5 {Invisible:1b,CustomName:'[{"text":"rand"}]',Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[random]}
summon minecraft:armor_stand 90001.5 1.00 90001.5 {Invisible:1b,CustomName:'[{"text":"rand"}]',Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

summon minecraft:armor_stand 90005.5 1.00 90001.5 {Invisible:1b,CustomName:'[{"text":"randomizer"}]',Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[random]}