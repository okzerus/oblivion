scoreboard players operation #id.temp obl.id = @s obl.id.target
tag @p[predicate=oblivion:matching_score] add obl.temp.empowered_channeling

advancement grant @a[tag=obl.temp.empowered_channeling] only oblivion:advancements/weaponry/shield/additions/channeling
execute as @e[type=#oblivion:all_mobs,distance=..6] run damage @s 12 oblivion:parried_projectile by @p[tag=obl.temp.empowered_channeling]
execute as @e[type=#oblivion:all_mobs,distance=..6] run damage @s 0.01 minecraft:trident by @p[tag=obl.temp.empowered_channeling]

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

tag @a remove obl.temp.empowered_channeling