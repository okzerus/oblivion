effect give @s speed 7 4 false
effect give @s strength 7 2 false
effect give @s resistance 7 2 false

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.6 2
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 0.6 0.7

particle flash ~ ~6.1 ~ 0 0 0 0 1 force @a

scoreboard players set particle_type oblivion 1
execute positioned ~ ~6.3 ~ rotated 90 90 run function ofl:start
execute positioned ~ ~6.3 ~ rotated 90 90 run function ofl:start