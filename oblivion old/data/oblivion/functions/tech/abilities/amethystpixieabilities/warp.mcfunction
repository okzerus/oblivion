particle flash ~ ~ ~
particle end_rod ~ ~ ~ 0 0 0 0.1 5 force
playsound entity.enderman.teleport master @a ~ ~ ~ 15 1.5
tp @s ^6 ^2 ^3
execute positioned ^6 ^2 ^3 run particle end_rod ~ ~ ~ 0 0 0 0.1 5 force
execute positioned ^6 ^2 ^3 run playsound entity.enderman.teleport master @a ~ ~ ~ 15 1.5
execute positioned ^6 ^2 ^3 run playsound entity.vex.charge master @a ~ ~ ~ 15 0.1
execute positioned ^6 ^2 ^3 run particle flash ~ ~ ~