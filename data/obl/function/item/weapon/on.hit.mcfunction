### WEAPON LIST
# Crack of Dawn
execute if predicate obl:holding/crack_of_dawn at @e[type=#obl:all_mobs,tag=obl.temp.hit] run function obl:item/weapon/crack_of_dawn/hit




# old code 

###   S E T   A S   T A R G E T
# Sets the hurt entity as a player's target for 5 seconds. Used later for direct parrying.
#scoreboard players operation @e[type=#oblivion:all_mobs,tag=obl.temp.hit] obl.id.target = @s obl.id
#tag @e[type=#oblivion:all_mobs,tag=obl.temp.hit] add obl.parrying.target
#scoreboard players set @e[type=#oblivion:all_mobs,tag=obl.parrying.target] obl.parry.target_tick 100


###   M I S C
#execute if predicate oblivion:unusual/chestplate/guardian run scoreboard players set @s obl.unusual.guardian_time 120
#execute if predicate oblivion:unusual/chestplate/guardian run tag @s add obl.unusual.guardian.red
#execute if entity @s[tag=obl.empowered.viking_shield] run function oblivion:items/shield/viking.cleanup


###   W E A P O N S
#execute if predicate oblivion:items/hold.any_sword run function oblivion:items/sword/hit
#execute if predicate oblivion:items/hold.any_scythe run function oblivion:items/scythe/hit
#execute if predicate oblivion:items/hold.any_pickaxe as @e[type=husk,tag=obl.weeping_angel,tag=obl.weeping_angel.dont_move,tag=obl.temp.hit,limit=1] at @s run function oblivion:abilities/mobs/weeping_angel/breaking/process
#execute if predicate oblivion:items/hold.any_axe as @e[type=skeleton,tag=obl.viking.shielded,tag=obl.temp.hit,limit=1] at @s run function oblivion:abilities/mobs/viking/break_shield
#execute unless predicate oblivion:items/hold.any_axe as @e[type=#oblivion:hostile,tag=obl.temp.hit,predicate=oblivion:items/hold.shield.both] at @s if predicate oblivion:chance/15 run function oblivion:abilities/mobs/parry


###   M O B S
#execute as @e[type=wither,tag=obl.temp.hit,limit=1] at @s if predicate oblivion:chance/10 run function oblivion:mobs/nether/withering_sphere
#execute as @e[type=dolphin,tag=obl.alpha_dolphin,tag=obl.temp.hit,limit=1] at @s run function oblivion:abilities/mobs/alpha_dolphin/hurt
#execute as @e[type=skeleton,tag=obl.ghost_ship.cannoneer,tag=!obl.ghost_ship.cannoneer.switched,tag=obl.temp.hit,limit=1] at @s if entity @a[tag=obl.temp.attacked,distance=..8] run function oblivion:abilities/mobs/ghost_ship/cannoneer.hurt
#execute as @e[type=wither_skeleton,tag=obl.temp.hit,limit=1] at @s if dimension minecraft:the_nether if predicate oblivion:chance/15 run function oblivion:mobs/nether/withering_sphere
