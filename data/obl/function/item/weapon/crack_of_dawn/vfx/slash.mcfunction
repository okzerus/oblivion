summon block_display ^ ^-128 ^2 {transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f],scale:[0.1f,1f,4f],translation:[0f,0f,0f]},Tags:["obl.crack_of_dawn.slash.vfx.1","obl.crack_of_dawn.slash.vfx"],block_state:{Name:magma_block}}
summon block_display ^ ^-128 ^2 {transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[1f,0f,0f,0f],scale:[0.1f,1f,2f],translation:[0f,1f,2f]},Tags:["obl.crack_of_dawn.slash.vfx.2","obl.crack_of_dawn.slash.vfx"],block_state:{Name:magma_block}}
execute as @e[tag=obl.crack_of_dawn.slash.vfx] positioned ^ ^ ^ run tp @s ^ ^ ^1 ~ ~

execute as @s at @s run particle explosion ^ ^1 ^3
execute as @s at @s run particle minecraft:sweep_attack ^ ^1 ^1
execute as @s at @s run particle minecraft:sweep_attack ^ ^1.2 ^1.1
execute as @s at @s run particle minecraft:flame ^ ^1 ^2 0.5 1 2 0.02 60 normal
execute as @s at @s run particle minecraft:small_flame ^ ^1 ^2 2 2 5 0.04 80 normal
