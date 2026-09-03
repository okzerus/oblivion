###   I N C R E A S E   D U N G E O N   C O R E   P R O G R E S S
scoreboard players operation #id.temp obl.id = @s obl.id
execute if entity @s[tag=obl.spawner.linked] run scoreboard players add @e[type=marker,tag=obl.dungeon.center,predicate=oblivion:matching_score] obl.dungeon_core.progress 1

setblock ~ ~ ~ air destroy
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.05 20
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1.5 1.8
execute if entity @s[tag=obl.lone_spawner] run function oblivion:tech/structures/spawner/loot
execute if entity @s[tag=obl.spawner.lukewarm_ocean] run summon marker ~ ~ ~ {Tags:["obl.lukewarm_ruin.coral_growth"]}
execute positioned ~ ~.3 ~ run kill @e[type=text_display,tag=obl.spawner_pause,limit=1,sort=nearest,distance=..1]
kill @s