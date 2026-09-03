schedule function oblivion:abilities 20t

execute as @e[tag=nethermothron] at @s run function oblivion:tech/abilities/nethermothron
execute as @e[tag=mothron] at @s run function oblivion:tech/abilities/mothron
execute as @e[tag=grinch] at @s run function oblivion:tech/abilities/grinch
execute unless entity @e[tag=mothron] run scoreboard players set mothronalive oblivion 0
execute unless entity @e[tag=nethermothron] run scoreboard players set nethermothronalive oblivion 0
execute unless entity @e[tag=grinch] run scoreboard players set grinchalive oblivion 0
execute as @e[tag=stormdetail] at @s unless entity @e[tag=storm,limit=1,distance=..3] run kill @s

execute if score amethystpixiealive oblivion matches 0 run tp @e[tag=obl.pixieclone] ~ -256 ~
execute if score amethystpixiealive oblivion matches 0 run kill @e[tag=obl.pixieclone]
execute if score amethystpixiealive oblivion matches 0 run tp @e[tag=obl.pixieminion] ~ -256 ~