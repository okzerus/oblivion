###   D E T E C T
tag @s add obl.temp.caller
execute unless entity @s[tag=obl.temp.success_hit] run tag @e[type=#oblivion:all_mobs,distance=..7,tag=!obl.temp.caller,limit=1,sort=nearest,nbt={HurtTime:10s}] add obl.temp.hit
# obl.temp.success_hit tag is to avoid running hit function multiple times on sweeping attacks. Gets removed in on_player.1t

###   F U N C T I O N
execute unless entity @s[tag=obl.temp.success_hit] unless entity @s[tag=obl.hit_cooldown] run function oblivion:tech/on.hit.main

###   H I T   C O O L D O W N
# To prevent the player from spamming weapon's on-hit abilities. Ticking in on_player.1t
execute unless entity @s[tag=obl.temp.custom_hit_cooldown] run scoreboard players set @s obl.hit_cooldown 5
tag @s remove obl.temp.custom_hit_cooldown
tag @s add obl.hit_cooldown

###   E N D
tag @s add obl.temp.success_hit
tag @s remove obl.temp.caller
tag @e[type=#oblivion:aoe,tag=obl.temp.hit] remove obl.temp.hit
advancement revoke @s only oblivion:tech/on.hit