execute positioned ~ ~1.5 ~ run tag @e[type=arrow,limit=1,sort=nearest,tag=!ice,nbt=!{inGround:1b}] add ice
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run particle dust 0.5 0.5 1 1 ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run particle block ice ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.4
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 1.4
scoreboard players set @s obl.shotbow 0