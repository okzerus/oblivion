particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.3
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.8
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 30
execute if entity @s[tag=obl.cannonball.flaming] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 30
execute if entity @s[tag=obl.cannonball.flaming] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6

execute if entity @s[tag=!obl.cannonball.flaming] as @e[type=#oblivion:all_mobs,distance=..5,tag=!obl.ghost_ship.mob] run damage @s 20 minecraft:player_explosion by @e[type=minecraft:marker,tag=obl.ghost_ship.center,limit=1,sort=nearest]
execute if entity @s[tag=obl.cannonball.flaming] as @e[type=#oblivion:all_mobs,distance=..5,tag=!obl.ghost_ship.mob] run damage @s 35 minecraft:player_explosion by @e[type=minecraft:marker,tag=obl.ghost_ship.center,limit=1,sort=nearest]

execute if entity @s[tag=obl.projectile.reflected] run scoreboard players operation #id.temp obl.id = @s obl.id

execute if entity @s[tag=!obl.cannonball.flaming,tag=obl.projectile.reflected] as @e[distance=..5] run damage @s 35 oblivion:parried_projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]
execute if entity @s[tag=obl.cannonball.flaming,tag=obl.projectile.reflected] as @e[distance=..5] run damage @s 50 oblivion:parried_projectile by @e[type=#oblivion:all_mobs,predicate=oblivion:matching_score,limit=1]

kill @s