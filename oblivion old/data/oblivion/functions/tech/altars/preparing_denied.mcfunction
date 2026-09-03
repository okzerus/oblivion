function oblivion:tech/altars/disabled
scoreboard players set @s obl.altar.timeout 100
scoreboard players set @s obl.altar.preparing 0
tag @s remove obl.altar.preparing
kill @e[type=armor_stand,limit=1,sort=nearest,distance=..10,tag=obl.altar.ritual_stability]
kill @e[type=armor_stand,limit=1,sort=nearest,distance=..10,tag=obl.altar.ritual_timer]
execute as @a[tag=obl.player_enchanting.preparing] at @s unless entity @e[type=marker,tag=obl.altar,distance=...5] run function oblivion:tech/altars/rituals/player_enchantment/cleanup

summon armor_stand ~ ~2 ~ {Tags:["obl.altar.ritual_deny_notification"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,CustomName:'[{"text":"Ритуал был прерван","color":"#652e78"}]',CustomNameVisible:1b}