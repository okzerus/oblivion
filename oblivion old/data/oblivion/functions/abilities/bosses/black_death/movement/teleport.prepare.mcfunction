tag @e[type=marker,tag=obl.black_death.tentacle] add obl.black_death.tentacle.end
tag @e[type=marker,tag=obl.black_death.tentacle] add obl.black_death.tentacle.move_back
tag @s add obl.black_death.teleporting
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1.5 0.65
playsound oblivion:misc.laugh.2 hostile @a ~ ~ ~ 2 0.85

execute at @p[tag=obl.in_battle.black_death,distance=..50] align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["obl.black_death.teleport_position"]}
execute at @p[tag=obl.in_battle.black_death,distance=..50] run playsound minecraft:item.totem.use hostile @a ~ ~.3 ~ 1 0.7