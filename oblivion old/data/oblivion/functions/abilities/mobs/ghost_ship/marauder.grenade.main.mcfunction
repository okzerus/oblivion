execute unless entity @s[tag=obl.dont_move] run scoreboard players add @s obl.ghost_ship.grenade_fuse 1
particle minecraft:smoke ~ ~.4 ~ 0 0 0 0 1
playsound minecraft:block.campfire.crackle hostile @a ~ ~ ~ 0.7 2

execute unless entity @s[tag=obl.on_ground] if entity @s[nbt={OnGround:1b}] run tag @s add obl.on_ground

execute if score @s[tag=!obl.projectile.reflected] obl.ghost_ship.grenade_fuse matches 50.. run function oblivion:abilities/mobs/ghost_ship/marauder.grenade.explode
execute if score @s[tag=obl.projectile.reflected] obl.ghost_ship.grenade_fuse matches 50.. run function oblivion:abilities/mobs/ghost_ship/marauder.grenade.explode.parried