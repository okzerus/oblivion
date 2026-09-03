###   S T A R T
scoreboard players operation #id.temp obl.id = @s obl.id


###   P O S E
execute as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run data merge entity @s {Pose:{Head:[50f,0f,0f],LeftArm:[341f,319f,0f],RightArm:[341f,45f,0f]}}


###   F A L L I N G
# Of course they won't just freeze mid-air. The Angel is teleporting to the armor stand in its main function, the armor stand then ultrakills itsef when it's stepping on ground (predicate)
summon armor_stand ~ ~ ~ {Tags:["obl.temp.weeping_angel_falling","obl.weeping_angel.falling","obl.stand.modified"],Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Marker:1b,DisabledSlots:4144959}
scoreboard players operation @e[type=armor_stand,tag=obl.temp.weeping_angel_falling] obl.id = @s obl.id


###   M I S C
data merge entity @s {NoAI:1b,NoGravity:1b}
tag @s add obl.weeping_angel.found
tag @s add obl.weeping_angel.dont_move
tag @s add obl.weeping_angel.freeze
team join obl.no_collision @s


###   C L E A N U P
tag @e[type=armor_stand] remove obl.temp.weeping_angel_falling