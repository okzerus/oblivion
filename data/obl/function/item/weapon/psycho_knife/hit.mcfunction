execute as @p[predicate=obl:holding/psycho_knife,tag=obl.weapon.psycho_knife.stealth] run scoreboard players set @s obl.weapon.psycho_knife.cd 200
execute as @p[predicate=obl:holding/psycho_knife,tag=obl.weapon.psycho_knife.stealth_from_effect] run function obl:item/weapon/psycho_knife/revert
execute as @p[predicate=obl:holding/psycho_knife,tag=obl.weapon.psycho_knife.stealth_from_passive] run function obl:item/weapon/psycho_knife/revert
execute at @e[distance=..8,tag=obl.temp.hit,sort=nearest,limit=1] run particle dust{color:[0.65,0.02,0.02],scale:2} ~ ~0.75 ~ 0.75 0.75 0.75 0 20