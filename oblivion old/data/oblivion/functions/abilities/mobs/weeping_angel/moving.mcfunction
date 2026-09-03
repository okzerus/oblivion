scoreboard players operation #id.temp obl.id = @s obl.id
execute if predicate oblivion:on.ground run playsound minecraft:entity.villager.work_weaponsmith hostile @a[distance=..12] ~ ~ ~ 0.35 1.4
execute if entity @s[tag=!obl.weeping_angel.attacked] if entity @a[distance=..3] run function oblivion:abilities/mobs/weeping_angel/visibility/found
execute unless entity @e[type=marker,tag=obl.weeping_angel.detect_movement,predicate=oblivion:matching_score] run summon marker ~ ~ ~ {Tags:["obl.weeping_angel.detect_movement","obl.temp.movement_detector"]}
scoreboard players operation @e[type=marker,tag=obl.temp.movement_detector,limit=1,sort=nearest] obl.id = @s obl.id
tag @e[type=marker] remove obl.temp.movement_detector
tag @s add obl.weeping_angel.moving