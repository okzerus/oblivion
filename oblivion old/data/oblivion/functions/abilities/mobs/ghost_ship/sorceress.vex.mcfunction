scoreboard players set @s obl.mob.ability_cd 400
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 1.5
particle minecraft:witch ~ ~4 ~ 1 1 1 0 50
execute anchored eyes rotated ~ 0 positioned ^ ^2.5 ^ run summon vex ~ ~ ~ {Tags:["obl.ghost_ship.mob","obl.mob","obl.ghost_ship.vex"],LifeTicks:300,Health:5,attributes:[{id:"generic.max_health",base:5f}]}
execute anchored eyes rotated ~ 0 positioned ^1 ^2.5 ^ run summon vex ~ ~ ~ {Tags:["obl.ghost_ship.mob","obl.mob","obl.ghost_ship.vex"],LifeTicks:300,Health:5,attributes:[{id:"generic.max_health",base:5f}]}
execute anchored eyes rotated ~ 0 positioned ^-1 ^2.5 ^ run summon vex ~ ~ ~ {Tags:["obl.ghost_ship.mob","obl.mob","obl.ghost_ship.vex"],LifeTicks:300,Health:5,attributes:[{id:"generic.max_health",base:5f}]}