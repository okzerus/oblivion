###   A N O M A L Y
execute if entity @s[tag=obl.anomaly] run function oblivion:abilities/mobs/anomaly/main

###   P I X I E
execute if entity @s[tag=obl.pixie] run function oblivion:abilities/mobs/pixie/main

###   W E E P I N G   A N G E L
execute if entity @s[tag=obl.weeping_angel] run function oblivion:abilities/mobs/weeping_angel/main

###   V I K I N G
# execute if entity @s[tag=obl.viking] run function oblivion:abilities/mobs/viking/main

###   C R Y S T O D I A N
execute if entity @s[tag=obl.crystodian] run function oblivion:abilities/mobs/crystodian/main

###   A L P H A   D O L P H I N
execute if entity @s[tag=obl.alpha_dolphin] run function oblivion:abilities/mobs/alpha_dolphin/main

###   R U I N   G U A R D I A N
execute if entity @s[tag=obl.ruin_guardian] run function oblivion:abilities/mobs/ruin_guardian/main

###   G H O S T   S H I P
execute if entity @s[tag=obl.ghost_ship.cannoneer] run function oblivion:abilities/mobs/ghost_ship/cannoneer.main
execute if entity @s[tag=obl.ghost_ship.marauder] run function oblivion:abilities/mobs/ghost_ship/marauder.main
execute if entity @s[tag=obl.ghost_ship.sorceress] run function oblivion:abilities/mobs/ghost_ship/sorceress.main

###   M I S C
execute if score @s obl.mob.ability_cd matches 1.. run scoreboard players remove @s obl.mob.ability_cd 1