summon block_display ~ ~.1 ~ {block_state:{Name:dragon_egg},Tags:[obl.dragon_egg_rotation],transformation:{translation:[-0.5f,0f,-0.5f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}
playsound minecraft:block.end_portal_frame.fill ambient @a ~ ~ ~ 1 0.5
particle minecraft:firework ~ ~.5 ~ 0 0 0 0.1 30 normal
tag @s add obl.item_frame.dragon_egg_rotation