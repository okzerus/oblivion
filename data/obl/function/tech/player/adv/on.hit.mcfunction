# Called from data/obl/advancement/tech/on.hit



###   D E T E C T
## Temporarily tag the player who called the on.hit, then look for nearest damaged entity in close range to tag them with obl.temp.hit 
## (might need to be replaced with a more consistent tech)
tag @s add obl.temp.caller
execute unless entity @s[tag=obl.temp.success_hit] run tag @e[type=#obl:all_mobs,distance=..7,tag=!obl.temp.caller,limit=1,sort=nearest,nbt={HurtTime:10s}] add obl.temp.hit
## obl.temp.success_hit to avoid running on.hit function multiple times on sweeping attacks. Gets removed next tick in on_player.1t



###   D A M A G E   C A L C U L A T I O N
## Save the pre-hit HP value as Old value.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] run scoreboard players operation @s obl.health_old = @s obl.health
# Debug:
tellraw @s[tag=obl.debug] [{"text":"Было: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health_old"}},{"text":" ХП."}]
## Update HP value from entity's NBT.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] store result score @s obl.health run data get entity @s Health
# Debug:
tellraw @s[tag=obl.debug] [{"text":"Стало: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.health"}},{"text":" ХП."}]
## Calculate amount of damage the entity took.
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health < @s obl.health_old run function obl:tech/calc.damage_taken
execute as @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] if score @s obl.health = @s obl.health_old run scoreboard players set @s obl.damage_taken 0
# Debug:
tellraw @s[tag=obl.debug] [{"text":"Нанесено урона: "},{"score":{"name":"@e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit]","objective":"obl.damage_taken"}}]



###   F U N C T I O N
# Hit entity found? Proceed to weapon detection.
execute if entity @s[tag=!obl.temp.success_hit,tag=!obl.hit_cooldown] run function obl:item/weapon/on.hit


###   H I T   C O O L D O W N
# Base 5 ticks cooldown to prevent the player from spamming weapons' on-hit abilities. Ticks down in on_player.1t, custom cooldown applied in item/weapon/on.hit 
execute unless entity @s[tag=obl.temp.custom_hit_cooldown] run scoreboard players set @s obl.hit_cooldown 5
tag @s remove obl.temp.custom_hit_cooldown


###   E N D
# Cleanup
tag @s remove obl.temp.caller
tag @s add obl.temp.success_hit
tag @e[type=#obl:all_mobs] remove obl.temp.hit
advancement revoke @s only obl:tech/on.hit