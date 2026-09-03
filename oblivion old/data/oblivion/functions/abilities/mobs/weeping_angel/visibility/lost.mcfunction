###   F U N C T I O N
tag @s remove obl.weeping_angel.found
tag @s remove obl.weeping_angel.freeze
tag @s remove obl.weeping_angel.dont_move
scoreboard players operation #id.temp obl.id = @s obl.id
data merge entity @s {NoAI:0b,NoGravity:0b}
damage @s 1 minecraft:mob_projectile by @p[distance=..40]


###   P O S E
execute as @e[type=armor_stand,tag=obl.weeping_angel.stand,predicate=oblivion:matching_score] run data merge entity @s {Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,5f],LeftArm:[311f,319f,0f],RightArm:[313f,45f,0f]}}