scoreboard players set @s obl.altar.preparing 0
tag @s remove obl.altar.preparing
tag @s add obl.altar.working
kill @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=obl.altar.ritual_stability]
kill @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=obl.altar.ritual_timer]

execute if entity @s[tag=obl.altar.ritual,tag=obl.altar.ritual.player_enchanting] as @p[tag=obl.player_enchanting.preparing,distance=...5] run function oblivion:tech/altars/rituals/player_enchantment/start

execute if entity @s[tag=obl.altar.crafting] as @e[type=item,distance=...3,tag=obl.altar.item.using] run data merge entity @s {NoGravity:1b,PickupDelay:32767}
execute if entity @s[tag=obl.altar.crafting] run tp @e[type=item,distance=...3,tag=obl.altar.item.using] ~ ~1.5 ~
execute if entity @s[tag=obl.altar.crafting] run playsound minecraft:block.end_portal_frame.fill ambient @a ~ ~1.5 ~ 1 1
execute if entity @s[tag=obl.altar.crafting] run playsound minecraft:entity.ender_eye.death ambient @a ~ ~1.5 ~ 1 0.8
execute if entity @s[tag=obl.altar.crafting] run particle minecraft:flash ~ ~1.5 ~ 0 0 0 0 1 normal
execute if entity @s[tag=obl.altar.crafting] run particle minecraft:firework ~ ~1.5 ~ 0 0 0 0.1 10 normal