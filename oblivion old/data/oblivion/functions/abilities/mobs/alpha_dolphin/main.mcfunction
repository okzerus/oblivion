execute unless entity @s[tag=obl.alpha_dolphin.tamed] unless score @s obl.mob.ability_cd matches 1.. if entity @a[distance=..7,gamemode=!spectator] run function oblivion:abilities/mobs/alpha_dolphin/dash
execute unless entity @s[tag=obl.alpha_dolphin.tamed] unless score @s obl.alpha_dolphin.hurt_time matches 1.. if data entity @s {GotFish:1b} run function oblivion:abilities/mobs/alpha_dolphin/got_fish

particle minecraft:nautilus ~ ~ ~ 0.3 0.3 0.3 0.5 2 normal
execute if entity @s[tag=obl.alpha_dolphin.dashing] run particle minecraft:sonic_boom ~ ~.5 ~ 0 0 0 0 1 normal

execute if score @s obl.alpha_dolphin.after_dash matches 1 run tag @s remove obl.alpha_dolphin.dashing
execute if score @s obl.alpha_dolphin.after_dash matches 1 run tp @s @s

execute if score @s obl.alpha_dolphin.dropped_pearl matches 1.. run scoreboard players remove @s obl.alpha_dolphin.dropped_pearl 1
execute if score @s obl.alpha_dolphin.hurt_time matches 1.. run scoreboard players remove @s obl.alpha_dolphin.hurt_time 1
execute if score @s obl.alpha_dolphin.after_dash matches 1.. run scoreboard players remove @s obl.alpha_dolphin.after_dash 1