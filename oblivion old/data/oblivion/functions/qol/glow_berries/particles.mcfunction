playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1 2
playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 1.3
playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 1 1.3
particle minecraft:flash ~ ~.3 ~ 0 0 0 0 1
particle minecraft:firework ~ ~.3 ~ 0 0 0 0.1 20

data merge entity @e[type=item,sort=nearest,limit=1] {Glowing:1b}

tag @s add obl.glow_berried