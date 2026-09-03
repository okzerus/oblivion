###   V I L L A G E R   H O N E S T   R E A C T I O N
playsound minecraft:entity.villager.celebrate hostile @a ~ ~ ~ 1 1
summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Готов обслуживать!","color":"green"}]',CustomNameVisible:1b}
tag @s remove obl.villager.cooldown
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ structure_void
execute if block ~ ~1 ~ structure_void run setblock ~ ~1 ~ air