###   S C O R E B O A R D
scoreboard players add @s abilities 1
scoreboard players set amethystpixiealive oblivion 1

###   A R E N A   C L E A R I N G
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace water
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace lava
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire

###   P L A Y E R   J O I N / L E A V E
execute as @a[distance=..79,tag=!inbattlewithpixie,scores={obl.difficulty=4..},tag=!obl.plbossdeath,tag=!obl.admin,gamemode=survival] run function oblivion:tech/abilities/amethystpixieabilities/joinpixie
execute as @a[distance=80..,tag=inbattlewithpixie] run function oblivion:tech/abilities/amethystpixieabilities/leavepixie

###   E F F E C T S
execute at @a[distance=..5,tag=inbattlewithpixie] run particle dust 1 0.2 1 1 ~ ~.2 ~ 0.2 0 0.2 0 1
effect give @a[distance=..5,tag=inbattlewithpixie] weakness 2 0 true
effect give @a[distance=..5,tag=inbattlewithpixie] slowness 2 0 true
effect give @a[distance=..5,tag=inbattlewithpixie] mining_fatigue 2 0 true

execute if entity @s[tag=obl.surface] run effect give @s resistance 10 2 true
execute if entity @s[tag=obl.surface] run effect give @s strength 10 4 true

###   C A V E / S U R F A C E   C H A N G E
execute if entity @s[y=53,dy=200,tag=!obl.surface] run function oblivion:tech/abilities/amethystpixieabilities/surface
execute if entity @s[y=50,dy=-200,tag=obl.surface] run function oblivion:tech/abilities/amethystpixieabilities/caves



###   A B I L I T I E S

## CAVES
# Phase 1
execute if score @s[tag=!obl.surface,tag=!obl.phase_2] abilities matches 50..80 at @a[tag=inbattlewithpixie] run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_1/ability_1
execute if score @s[tag=!obl.surface,tag=!obl.phase_2] abilities matches 120..150 run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_1/ability_2
execute if score @s[tag=!obl.surface,tag=!obl.phase_2] abilities matches 180..280 run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_1/ability_3
execute if score @s[tag=!obl.surface,tag=!obl.phase_2] abilities matches 281.. run scoreboard players set @s abilities 0
# Phase 2
execute if score @s[tag=!obl.surface,tag=obl.phase_2] abilities matches 50..80 at @a[tag=inbattlewithpixie] run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_2/ability_1
execute if score @s[tag=!obl.surface,tag=obl.phase_2] abilities matches 120..150 run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_2/ability_2
execute if score @s[tag=!obl.surface,tag=obl.phase_2] abilities matches 180..290 run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_2/ability_3
execute if score @s[tag=!obl.surface,tag=obl.phase_2] abilities matches 315 run function oblivion:tech/abilities/amethystpixieabilities/caves/phase_2/summon_pixie_clone
execute if score @s[tag=!obl.surface,tag=obl.phase_2] abilities matches 331.. run scoreboard players set @s abilities 0

## SURFACE
# Phase 1
execute if score @s[tag=obl.surface] abilities matches 50..70 at @a[distance=..20] run function oblivion:tech/abilities/amethystpixieabilities/surface/phase_1/ability_1

## CLONE ABILITIES
execute as @e[type=vex,tag=obl.pixieclone,tag=!obl.pixieclone.attacking,limit=1,sort=random] at @s run function oblivion:tech/abilities/amethystpixieabilities/pixie_clone
execute as @e[type=vex,tag=obl.pixieclone,tag=obl.pixieclone.attacking] at @s run function oblivion:tech/abilities/amethystpixieabilities/pixie_clone_attacking



###   P H A S E   T R A N S I T I O N S
execute if score @s[tag=!obl.phase_2,tag=!obl.surfacebydefault] pixiehealth matches ..29 run function oblivion:tech/abilities/amethystpixieabilities/transitions/phase_2
execute if score @s[tag=!obl.phase_2,tag=obl.surfacebydefault] pixiehealth matches ..69 run function oblivion:tech/abilities/amethystpixieabilities/transitions/phase_2

###   B O O S T   B O S S   B A S E D   O N   T H E   P L A Y E R   A M O U N T

scoreboard players set @s playercount 0
execute at @a[tag=inbattlewithpixie,distance=..50,gamemode=!creative,gamemode=!spectator,tag=!obl.admin] run scoreboard players add @s playercount 1

execute if score @s[tag=!obl.surface] playercount matches 2 run effect give @s strength 10 0 true
execute if score @s[tag=!obl.surface] playercount matches 3 run effect give @s resistance 10 0 true
execute if score @s[tag=!obl.surface] playercount matches 3 run effect give @s strength 10 2 true
execute if score @s[tag=!obl.surface] playercount matches 4 run effect give @s resistance 10 1 true
execute if score @s[tag=!obl.surface] playercount matches 4 run effect give @s strength 10 4 true
execute if score @s[tag=!obl.surface] playercount matches 5 run effect give @s resistance 10 2 true
execute if score @s[tag=!obl.surface] playercount matches 5 run effect give @s strength 10 6 true

execute if score @s[tag=obl.surface] playercount matches 2 run effect give @s strength 10 4 true
execute if score @s[tag=obl.surface] playercount matches 3 run effect give @s strength 10 6 true
execute if score @s[tag=obl.surface] playercount matches 3 run effect give @s resistance 10 3 true
execute if score @s[tag=obl.surface] playercount matches 4 run effect give @s strength 10 8 true
execute if score @s[tag=obl.surface] playercount matches 5 run effect give @s resistance 10 3 true
execute if score @s[tag=obl.surface] playercount matches 5 run effect give @s strength 10 10 true

###   T E C H N I C A L
## BOSSBAR
execute at @s run bossbar set oblivion:amethystpixie players @a[distance=..50]
execute store result bossbar oblivion:amethystpixie value run data get entity @s Health
## GET HEATLH IN THE SCOREBOARD
execute store result score @s pixiehealth run data get entity @s Health
## REMOVE BOSS IF NO PLAYERS DETECTED NEARBY
execute at @s unless entity @a[distance=..50,tag=inbattlewithpixie] run function oblivion:tech/abilities/amethystpixieabilities/everyoneleft
## THE PREPARING BEAM FOR SWINGS
execute as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing_prepare
execute as @e[type=marker,tag=obl.pixie_swing,tag=!obl.pixie_swing.disable_aim] at @s run tp @s ~ ~ ~ facing entity @p[tag=obl.pixie_swing.chosen] feet