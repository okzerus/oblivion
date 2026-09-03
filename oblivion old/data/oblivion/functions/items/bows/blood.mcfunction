execute positioned ~ ~1.5 ~ run tag @e[type=arrow,limit=1,sort=nearest,tag=!blood,nbt=!{inGround:1b}] add blood
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run particle dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0.05 30
execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^.2 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
scoreboard players set @s obl.shotbow 0