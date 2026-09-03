playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 0.6
particle minecraft:squid_ink ~ ~.8 ~ 0 0 0 0.7 70 normal
particle minecraft:explosion_emitter ~ ~.8 ~ 0 0 0 0 1 normal

execute as @a[distance=..5] run damage @s 16 minecraft:explosion by @e[type=minecraft:magma_cube,tag=obl.boss.black_death,limit=1,sort=nearest]

execute if entity @s[tag=obl.black_death.parried] as @a[tag=obl.in_battle.black_death] run function oblivion:lines/bosses/black_death/attacks/parried_explode
execute if entity @s[tag=obl.black_death.parried] run scoreboard players set @s obl.black_death.movement.cd 200
execute if entity @s[tag=obl.black_death.parried] run scoreboard players remove @s obl.fake_health 30

tag @s remove obl.black_death.dont_move
tag @s remove obl.dont_move
tag @s remove obl.black_death.parried
tag @s remove obl.black_death.charging
tag @s remove obl.black_death.speed.3
tag @s add obl.black_death.speed.1
function oblivion:abilities/bosses/black_death/movement/random_direction