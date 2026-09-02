tag @s add obl.weapon.fanged_assassin.fox_dance.trail_vfx.dead
particle dust{color:[0.14,0.14,0.14],scale:3.5} ~ ~ ~
execute as @e[distance=..0.5,type=marker,tag=!obl.weapon.fanged_assassin.fox_dance.trail_vfx.dead,tag=obl.weapon.fanged_assassin.fox_dance.trail_vfx,sort=nearest,limit=1] at @s run function obl:item/weapon/fanged_assassin/ability/fox_dance/trail_vfx
kill @s