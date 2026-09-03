summon minecraft:marker ~ ~ ~ {Tags:["obl.shard_of_time.copy","obl.temp.awaiting_id"]}
scoreboard players operation @e[type=marker,tag=obl.temp.awaiting_id,limit=1,sort=nearest] obl.id = @s obl.id
data modify entity @e[type=minecraft:marker,tag=obl.temp.awaiting_id,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players set @e[type=minecraft:marker,tag=obl.temp.awaiting_id,limit=1,sort=nearest] obl.shard_of_time.tick 500

scoreboard players set @s obl.shard_of_time.tick 100

playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 0.5 2
playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 2
tag @e[type=marker] remove obl.temp.awaiting_id