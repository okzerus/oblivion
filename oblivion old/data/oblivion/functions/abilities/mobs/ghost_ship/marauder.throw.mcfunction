tag @s add obl.temp.throwing

execute anchored eyes run summon armor_stand ^ ^ ^.0001 {Invisible:1b,Small:1b,Silent:1b,Invulnerable:1b,Tags:["obl.temp.grenade","obl.marauder.grenade","obl.marauder.grenade.armor_stand"],Passengers:[{id:block_display,Tags:["obl.marauder.grenade","obl.marauder.grenade.block_display"],block_state:{Name:tnt},transformation:{translation:[-0.25f,-0.75f,-0.25f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]}}]}
execute as @e[type=armor_stand,tag=obl.temp.grenade] run data modify entity @s Rotation set from entity @e[type=stray,tag=obl.temp.throwing,limit=1,sort=nearest] Rotation

execute if entity @p[tag=obl.temp.target,distance=5..7] as @e[type=armor_stand,limit=1,sort=nearest,tag=obl.temp.grenade] anchored eyes facing entity @p[tag=obl.temp.target] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^.7 summon marker run function oblivion:tech/parrying/projectile/launch
execute if entity @p[tag=obl.temp.target,distance=7.0001..9.5] as @e[type=armor_stand,limit=1,sort=nearest,tag=obl.temp.grenade] anchored eyes facing entity @p[tag=obl.temp.target] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1 summon marker run function oblivion:tech/parrying/projectile/launch
execute if entity @p[tag=obl.temp.target,distance=9.5001..12] as @e[type=armor_stand,limit=1,sort=nearest,tag=obl.temp.grenade] anchored eyes facing entity @p[tag=obl.temp.target] eyes positioned 0. 0. 0. rotated ~ ~ positioned ^ ^ ^1.4 summon marker run function oblivion:tech/parrying/projectile/launch
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=obl.temp.grenade] run data modify entity @s Motion set from storage oblivion:temp vector

playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 0.9
playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 1 1.4
playsound minecraft:entity.skeleton.shoot hostile @a ~ ~ ~ 1 0.7

tag @e[type=armor_stand] remove obl.temp.grenade
tag @s remove obl.temp.throwing