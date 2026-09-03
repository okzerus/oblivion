scoreboard players set @s obl.bow_shot 0

## Fletcher empowering
execute if entity @s[tag=obl.empowered.fletcher] positioned ~ ~1.625 ~ as @e[type=arrow,limit=1,sort=nearest,tag=!obl.fletcher_empowered] at @s run function oblivion:tech/bow/fletcher_empower
execute if entity @s[tag=obl.empowered.instinct] positioned ~ ~1.625 ~ run tag @e[type=arrow,limit=1,sort=nearest,tag=!obl.ignores_instinct] add obl.ignores_instinct

###   S O L S T I C E   B O W

###   S T A R G A Z E R