scoreboard players set @s obl.in_combat 100
execute if entity @s[tag=obl.in_combat] run return 0

tag @s add obl.in_combat
tellraw @s[tag=obl.debug] "Вошёл в бой"

execute if entity @s[type=player] run return 0
scoreboard players operation @s obl.id.combat = #id_transfer obl