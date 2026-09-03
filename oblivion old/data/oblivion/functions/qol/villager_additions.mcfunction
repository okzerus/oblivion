execute if entity @s[tag=obl.villager.cooldown] run scoreboard players remove @s obl.villager.cooldown 1
execute if entity @s[tag=obl.villager.cooldown] if score @s obl.villager.cooldown matches 0 run function oblivion:qol/villagers/ready

execute unless entity @s[tag=obl.villager.cooldown] run function oblivion:qol/villagers/main