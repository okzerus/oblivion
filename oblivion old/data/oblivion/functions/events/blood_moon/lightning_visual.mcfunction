
particle dust 0.6 0 0 4 ~ ~6.3 ~ 1.2 0 1.2 0 50 force @a
particle flash ~ ~6.1 ~ 0 0 0 0 1 force @a

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 3 1.2

scoreboard players set particle_type oblivion 1
execute positioned ~ ~6.3 ~ rotated 90 90 run function ofl:start
execute positioned ~ ~6.3 ~ rotated 90 90 run function ofl:start