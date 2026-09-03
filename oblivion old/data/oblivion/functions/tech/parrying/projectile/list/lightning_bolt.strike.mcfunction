tag @s add obl.temp.parrying_lightning
execute as @e[type=#oblivion:all_mobs,distance=..16] run damage @s 60 oblivion:parried_lightning by @p[tag=obl.temp.parrying_lightning]
tag @s remove obl.temp.parrying_lightning

playsound minecraft:item.totem.use master @a ~ ~ ~ 4 1.6
playsound minecraft:item.totem.use master @a ~ ~ ~ 4 1.3
playsound minecraft:item.totem.use master @a ~ ~ ~ 4 0.9
playsound minecraft:item.totem.use master @a ~ ~ ~ 4 0.6
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.7
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.5
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.3
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 1.1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 0.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 0.7
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 4 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 1.8
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 1.4
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 1.2
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 4 1
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
summon creeper ~ ~-.7 ~ {Fuse:0,ExplosionRadius:10,Tags:["obl.mob"],CustomName:'[{"text":"Парированая молния"}]'}
particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 5 300 force
particle minecraft:firework ~ ~.5 ~ 0 0 0 7 1500 force