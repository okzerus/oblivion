tag @s add obl.temp.parrying_lightning
execute as @e[type=#oblivion:all_mobs,distance=..6] run damage @s 12 oblivion:parried_lightning by @p[tag=obl.temp.parrying_lightning]
tag @s remove obl.temp.parrying_lightning
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.6
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.3
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
summon creeper ~ ~-.7 ~ {Fuse:0,ExplosionRadius:5,Tags:["obl.mob"],CustomName:'[{"text":"Усиленная молния"}]'}
particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 2 100 force
particle minecraft:firework ~ ~.5 ~ 0 0 0 4 400 force
tag @s remove obl.just_parried_fucking_lightning