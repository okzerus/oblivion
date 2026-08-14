# Called from data/obl/advancement/tech/on.hit



###   D E T E C T
# Temporarily tag the player who called the on.hit, then look for nearest damaged entity in close range to tag them with hit (might need to be replaced with a more consistent tech)
tag @s add obl.temp.caller
execute unless entity @s[tag=obl.temp.success_hit] run tag @e[type=#obl:all_mobs,distance=..7,tag=!obl.temp.caller,limit=1,sort=nearest,nbt={HurtTime:10s}] add obl.temp.hit
tag @s add obl.temp.success_hit
# Last tag to avoid running on.hit function multiple times on sweeping attacks. Gets removed next tick in on_player.1t


###   F U N C T I O N
# Hit entity found? Proceed to weapon detection.
execute if entity @s[tag=!obl.temp.success_hit] unless entity @s[tag=obl.hit_cooldown] run function obl:item/weapon/on.hit


###   H I T   C O O L D O W N
# Base 5 ticks cooldown to prevent the player from spamming weapons' on-hit abilities. Ticks down in on_player.1t, custom cooldown applied in item/weapon/on.hit 
execute unless entity @s[tag=obl.temp.custom_hit_cooldown] run scoreboard players set @s obl.hit_cooldown 5
tag @s remove obl.temp.custom_hit_cooldown


###   E N D
# Cleanup
tag @s remove obl.temp.caller
tag @e[type=#obl:all_mobs] remove obl.temp.hit
advancement revoke @s only obl:tech/on.hit