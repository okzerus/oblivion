spreadplayers ~ ~ 0 30 false @e[tag=obl.blood_mob,tag=!obl.psycho,tag=!obl.spread]
spreadplayers ~ ~ 0 15 false @e[tag=obl.blood_mob,tag=obl.psycho,tag=!obl.spread]
execute at @e[tag=obl.blood_mob,tag=!obl.spread] positioned ~ ~8 ~ run function oblivion:events/blood_moon/lightning_visual
tag @e[tag=obl.blood_mob,tag=!obl.spread] add obl.spread