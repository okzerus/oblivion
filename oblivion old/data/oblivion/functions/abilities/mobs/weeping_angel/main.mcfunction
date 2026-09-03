
###   M A I N
## ARMOR STAND MOVEMENT
scoreboard players operation #id.temp obl.id = @s obl.id
tp @e[type=armor_stand,predicate=oblivion:matching_score,limit=1,sort=nearest] @s
## NO PLAYERS NEARBY
execute unless entity @s[tag=obl.weeping_angel.freeze] unless entity @a[distance=..45] run function oblivion:abilities/mobs/weeping_angel/no_players


###   L O S T
execute if entity @s[tag=!obl.temp.detected,tag=obl.weeping_angel.found,tag=!obl.weeping_angel.attacked,tag=!obl.weeping_angel.broken] if entity @a[distance=..45] run function oblivion:abilities/mobs/weeping_angel/visibility/lost


###   F A L L I N G
execute if entity @s[tag=obl.weeping_angel.dont_move] positioned as @e[type=armor_stand,tag=obl.weeping_angel.falling,predicate=oblivion:matching_score,limit=1] run tp @s ~ ~ ~


###   D E T E C T   M O V E M E N T
tag @s remove obl.weeping_angel.moving
execute unless entity @e[type=marker,tag=obl.weeping_angel.detect_movement,distance=...001] run function oblivion:abilities/mobs/weeping_angel/moving


###   R E S T O R I N G
execute if score @s obl.weeping_angel.restoring_cd matches 1.. run scoreboard players remove @s obl.weeping_angel.restoring_cd 1
execute if score @s obl.weeping_angel.restoring_cd matches 0 run function oblivion:abilities/mobs/weeping_angel/breaking/restore


###   A T T A C K   C O O L D O W N
execute if score @s obl.weeping_angel.attack_cd matches 1.. run scoreboard players remove @s obl.weeping_angel.attack_cd 1
execute if score @s obl.weeping_angel.attack_cd matches 0 run tag @s remove obl.weeping_angel.attacked


###   C L E A N U P
tag @s remove obl.temp.detected