tag @s add obl.murasama.spinning

# Temp entity
summon marker ~ ~ ~ {Tags:[obl.murasama_marker.spin]}
data modify entity @e[type=marker,tag=obl.murasama_marker.spin,tag=!obl.temp.modified,limit=1,sort=nearest] Rotation set from entity @s Rotation
tag @e[type=marker,tag=obl.murasama_marker.spin,tag=!obl.temp.modified,limit=1,sort=nearest] add obl.temp.modified