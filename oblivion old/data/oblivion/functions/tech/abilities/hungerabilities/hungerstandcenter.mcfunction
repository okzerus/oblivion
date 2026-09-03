tp @s @e[tag=obl.hungerstandcenter,limit=1,sort=nearest]
execute at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1
execute at @s run playsound entity.husk.ambient master @a ~ ~ ~ 1 1
execute at @s run particle flash ~ ~ ~