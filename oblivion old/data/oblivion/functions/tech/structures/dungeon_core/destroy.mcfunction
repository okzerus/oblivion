###   D E S T R O Y   S P A W N E R S
scoreboard players operation #id.temp obl.id = @s obl.id
execute unless score #disable_spawners oblivion matches 1 as @e[type=marker,tag=obl.spawner,tag=obl.spawner.linked,predicate=oblivion:matching_score] at @s run function oblivion:tech/structures/spawner/destroy

###   E F F E C T S
function oblivion:tech/structures/dungeon_core/destroy.particles
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1.4
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1.3
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.8

###   C L E A N U P
kill @s