execute positioned ~ ~1.5 ~ run tag @e[type=arrow,limit=1,sort=nearest,tag=!hell,nbt=!{inGround:1b}] add hell
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run particle soul ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.6
scoreboard players set @s obl.shotbow 0