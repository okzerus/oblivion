damage @s 6 minecraft:player_attack by @e[tag=obl.weapon.fanged_assassin.fox_dance.blinker,limit=1] from @s

# Оглушение на 1 секунду
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:weakness 1 255 true

execute at @s run particle minecraft:crit ~ ~1 ~ 0.3 0.4 0.3 0.05 25
execute at @s run particle small_flame ~ ~1 ~ 0 0 0 0.2 50
execute at @s run playsound entity.player.attack.crit player @a[distance=..4] ~ ~ ~ 1 1.3
execute at @s run playsound block.trial_spawner.ominous_activate player @a[distance=..4] ~ ~ ~ 1 1

scoreboard players set @a[distance=..2,predicate=obl:holding/fanged_assassin,sort=nearest,limit=1] obl.weapon.fanged_assassin.fox_dance.cd 100
scoreboard players set @a[distance=..2,predicate=obl:holding/fanged_assassin,scores={obl.weapon.fanged_assassin.autumn_red=1..},sort=nearest,limit=1] obl.weapon.fanged_assassin.fox_dance.cd 40
execute as @e[distance=..2,type=marker,tag=obl.weapon.fanged_assassin.fox_dance.trail_vfx,sort=nearest,limit=1] at @s run function obl:item/weapon/fanged_assassin/ability/fox_dance/trail_vfx