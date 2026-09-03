playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1 2
playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 1.3
playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 1 1.3
particle minecraft:flash ~ ~.3 ~ 0 0 0 0 1
particle minecraft:firework ~ ~.3 ~ 0 0 0 0.1 20
execute if entity @s[tag=obl.glow_berries.offhand] run tag @s add obl.can_teleport

scoreboard players set @s obl.glowing.cd 200
tag @s add obl.glow_berried
effect give @s glowing 9 0 false
advancement grant @s only oblivion:advancements/items/glow