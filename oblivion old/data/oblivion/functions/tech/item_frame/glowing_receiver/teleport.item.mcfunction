tag @s add obl.temp.teleporting
execute facing entity @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] feet run function oblivion:tech/raycast/glowing_receiver
execute as @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] at @s facing entity @e[type=item,tag=obl.temp.teleporting,limit=1,sort=nearest] feet run function oblivion:tech/raycast/glowing_receiver

particle minecraft:firework ~ ~.2 ~ 0 0 0 0.05 5
particle minecraft:flash ~ ~.2 ~ 0 0 0 0 1
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.5 1.7
execute as @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] at @s run particle minecraft:firework ^ ^ ^.5 0 0 0 0.05 5
execute as @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] at @s run particle minecraft:flash ^ ^ ^.5 0 0 0 0 1
execute as @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] at @s run playsound minecraft:entity.illusioner.mirror_move player @a ^ ^ ^.5 0.5 1.7

execute as @e[type=item_frame,tag=obl.temp.ticked,limit=1,sort=random] at @s run tp @e[type=item,tag=obl.temp.teleporting,limit=1,sort=nearest] ^ ^ ^.5

tag @s remove obl.temp.teleporting
data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
function oblivion:qol/glow_berries/remove_glowing