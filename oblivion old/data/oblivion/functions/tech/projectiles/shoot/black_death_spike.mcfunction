summon minecraft:marker ~ ~ ~ {Tags:["obl.projectile_shooter.black_death_spike","obl.projectile_shooter"]}
execute unless entity @s[tag=obl.temp.black_death_spear] as @e[type=marker,limit=1,sort=nearest,tag=obl.projectile_shooter.black_death_spike,tag=!obl.modified] at @s run tp @s ~ ~ ~ facing entity @p[tag=obl.in_battle.black_death,tag=!obl.death_boss.cd] eyes
execute if entity @s[tag=obl.temp.black_death_spear] as @e[type=marker,limit=1,sort=nearest,tag=obl.projectile_shooter.black_death_spike,tag=!obl.modified] at @s run tp @s @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest]
tag @e[type=marker,tag=obl.projectile_shooter.black_death_spike,limit=1,sort=nearest,tag=!obl.modified] add obl.modified

execute unless entity @s[tag=obl.temp.black_death_spear] facing entity @p[tag=obl.in_battle.black_death,tag=!obl.death_boss.cd] eyes run function oblivion:abilities/beam_attack_particles.unreflectable
execute if entity @s[tag=obl.temp.black_death_spear] rotated as @e[type=marker,tag=obl.temp.black_death_spear,limit=1,sort=nearest] run function oblivion:abilities/beam_attack_particles.unreflectable