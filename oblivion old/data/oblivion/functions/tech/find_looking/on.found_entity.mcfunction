playsound minecraft:block.beacon.ambient player @a[tag=obl.equipped.accs.oblivion_monocle,limit=1,sort=nearest,tag=obl.temp.looking] ~ ~ ~ 0.7 2

execute if entity @s[type=armor_stand] run particle dust 1 0.6 1 0.45 ~ ~1 ~ 0.3 0.6 0.3 0 2 normal @a[tag=obl.equipped.accs.oblivion_monocle,limit=1,sort=nearest,tag=obl.temp.looking]
execute if entity @s[type=#oblivion:item_frames] run particle dust 1 0.6 1 0.45 ~ ~.15 ~ 0.2 0.2 0.2 0 2 normal @a[tag=obl.equipped.accs.oblivion_monocle,limit=1,sort=nearest,tag=obl.temp.looking]
execute if entity @s[type=painting] run particle dust 1 0.6 1 0.45 ~ ~.2 ~ 0.5 0.5 0.5 0 1 normal @a[tag=obl.equipped.accs.oblivion_monocle,limit=1,sort=nearest,tag=obl.temp.looking]
execute if entity @s[type=#oblivion:minecarts] run particle dust 1 0.6 1 0.45 ~ ~.5 ~ 0.5 0.5 0.5 0 2 normal @a[tag=obl.equipped.accs.oblivion_monocle,limit=1,sort=nearest,tag=obl.temp.looking]