###   S T A R T
tag @s add obl.temp.found
tag @s add obl.weeping_angel.found
tag @p[tag=obl.temp.searching] add obl.temp.noticed
execute unless entity @a[tag=obl.temp.noticed] run tag @p[distance=..3] add obl.temp.noticed
scoreboard players operation #id.temp obl.id = @s obl.id

###   C H E C K   F O R   B L O C K S
execute as @p[tag=obl.temp.noticed] at @s anchored eyes run summon marker ^ ^ ^.001 {Tags:[obl.temp.end]}
execute anchored eyes facing entity @e[type=marker,tag=obl.temp.end] eyes run function oblivion:abilities/mobs/weeping_angel/check/blocks


###   P O S E
execute as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run data merge entity @s {Pose:{Head:[50f,0f,0f],LeftArm:[341f,319f,0f],RightArm:[341f,45f,0f]}}


###   F A L L I N G
# Of course they won't just freeze mid-air. The Angel is teleporting to the armor stand in its main function, the armor stand then ultrakills itsef when it's stepping on ground (predicate)
summon armor_stand ~ ~ ~ {Tags:["obl.temp.weeping_angel_falling","obl.weeping_angel.falling","obl.stand.modified"],Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959}
scoreboard players operation @e[type=armor_stand,tag=obl.temp.weeping_angel_falling] obl.id = @s obl.id


###   O N   D E T E C T
## FAR
execute if entity @s[tag=obl.temp.found_player,tag=obl.weeping_angel.moving] run effect give @p[tag=obl.temp.noticed,distance=3.0001..15] blindness 1 0 true
execute if entity @s[tag=obl.temp.found_player,tag=obl.weeping_angel.moving] run playsound oblivion:misc.weeping_angel.near hostile @p[tag=obl.temp.noticed,distance=3.0001..15] ~ ~ ~ 1.3 1 0.1
## NEAR
execute if entity @s[tag=obl.temp.found_player,tag=!obl.weeping_angel.attacked] if entity @p[tag=obl.temp.noticed,distance=..3] run function oblivion:abilities/mobs/weeping_angel/attack


###   M I S C
data merge entity @s {NoAI:1b,NoGravity:1b}
tag @s add obl.weeping_angel.dont_move


###   C L E A N U P
tag @s remove obl.temp.found
tag @s remove obl.temp.found_player
tag @a remove obl.temp.noticed
kill @e[type=marker,tag=obl.temp.end]
tag @e[type=armor_stand] remove obl.temp.weeping_angel_falling