summon minecraft:block_display ~ ~ ~ {Tags:["obl.cannonball","obl.cannonball.awaiting_target"],block_state:{Name:coal_block},transformation:{translation:[-0.25f,-0.25f,-0.25f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]}}
execute unless entity @s[type=player] as @e[type=block_display,tag=obl.cannonball,tag=obl.cannonball.awaiting_target,limit=1,sort=nearest] at @s run function oblivion:tech/structures/list/ghost_ship/cannons/cannonballs/shoot
execute if entity @s[type=marker,tag=obl.ghost_ship.cannon.lower] run tag @e[type=block_display,tag=obl.cannonball,tag=obl.cannonball.awaiting_target,limit=1,sort=nearest] add obl.cannonball.flaming
tag @e[type=block_display] remove obl.cannonball.awaiting_target

tag @s[type=marker] add obl.ghost_ship.cannon.shot
execute if entity @s[tag=obl.ghost_ship.cannon.upper] run scoreboard players set @e[type=marker,tag=obl.ghost_ship.center,limit=1,sort=nearest,tag=obl.init] obl.ghost_ship.shooting_delay 7
execute if entity @s[tag=obl.ghost_ship.cannon.lower] run scoreboard players set @e[type=marker,tag=obl.ghost_ship.center,limit=1,sort=nearest,tag=obl.init] obl.ghost_ship.shooting_delay 3