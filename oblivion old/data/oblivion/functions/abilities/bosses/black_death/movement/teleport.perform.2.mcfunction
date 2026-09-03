scoreboard players set @s obl.black_death.teleporting 0
scoreboard players set @s obl.black_death.teleport.time 0
scoreboard players set @s obl.black_death.teleport.cd 400

playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1.5 0.65
playsound oblivion:misc.laugh.1 hostile @a ~ ~ ~ 1.5 0.85
particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 0.6 70
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1.5 0.8
tag @s remove obl.black_death.teleporting