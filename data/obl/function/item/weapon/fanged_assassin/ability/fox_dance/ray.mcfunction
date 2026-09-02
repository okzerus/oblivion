# Проверка хитбокса сущности
summon marker ~ ~-1 ~ {Tags:["obl.weapon.fanged_assassin.fox_dance.trail_vfx","obl.vfx"]}
execute as @e[dx=1,dy=1,dz=1,tag=!obl.weapon.fanged_assassin.fox_dance.blinker,type=#obl:all_mobs,sort=nearest,limit=1] run return run function obl:item/weapon/fanged_assassin/ability/fox_dance/hit

# Остоновка при твёрдом блоке
execute unless block ~ ~ ~ #obl:non_solid run return fail

scoreboard players add @s obl.weapon.fanged_assassin.fox_dance.ray 1
execute if score @s obl.weapon.fanged_assassin.fox_dance.ray matches 60.. run return fail

execute positioned ^ ^ ^0.2 run function obl:item/weapon/fanged_assassin/ability/fox_dance/ray