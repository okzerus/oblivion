###   H A L F - I N V U L N E R A B I L I T Y   M O D E
effect give @s[tag=obl.gamemode.creative,gamemode=adventure] resistance infinite 4 true
effect give @s[tag=obl.gamemode.creative,gamemode=adventure] saturation infinite 4 true
execute if entity @s[tag=obl.gamemode.creative,gamemode=adventure] run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.6 0.3 0 10
execute if entity @s[tag=obl.gamemode.creative,gamemode=adventure] run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5
tag @s[tag=obl.gamemode.creative,gamemode=adventure] add obl.gamemode.invulnerable_adventure
tellraw @s[tag=obl.gamemode.creative,gamemode=adventure] [{"text":"> ","color":"#CA2C5A"},{"text":"Творческий режим","color":"gold"},{"text":" был переключен на ","color":"#CA2C5A"},{"text":"Режим приключений","color":"dark_aqua"},{"text":";\nАктивировано полу-бессмертие.","color":"#CA2C5A"}]

effect clear @s[tag=obl.gamemode.invulnerable_adventure,gamemode=!adventure] resistance
effect clear @s[tag=obl.gamemode.invulnerable_adventure,gamemode=!adventure] saturation
execute if entity @s[tag=obl.gamemode.invulnerable_adventure,gamemode=!adventure] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
tag @s[tag=obl.gamemode.invulnerable_adventure,gamemode=!adventure] remove obl.gamemode.invulnerable_adventure


###   C L E A R   T A G S
tag @s remove obl.gamemode.survival
tag @s remove obl.gamemode.adventure
tag @s remove obl.gamemode.creative
tag @s remove obl.gamemode.spectator
tag @s remove obl.invulnerable


###   P A R T I C L E S






execute if entity @s[gamemode=survival] run tag @s add obl.gamemode.survival
execute if entity @s[gamemode=adventure] run tag @s add obl.gamemode.adventure
execute if entity @s[gamemode=creative] run tag @s add obl.gamemode.creative
execute if entity @s[gamemode=creative] run tag @s add obl.invulnerable
execute if entity @s[gamemode=spectator] run tag @s add obl.gamemode.spectator
execute if entity @s[gamemode=spectator] run tag @s add obl.invulnerable