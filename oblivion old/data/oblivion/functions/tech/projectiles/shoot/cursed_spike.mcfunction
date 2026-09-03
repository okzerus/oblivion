summon minecraft:marker ~ ~ ~ {Tags:["obl.projectile_shooter.cursed_spike","obl.projectile_shooter"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=obl.projectile_shooter,tag=!obl.modified] Rotation set from entity @s Rotation
function oblivion:abilities/beam_attack_particles.unreflectable
tag @e[type=marker,tag=obl.projectile_shooter.cursed_spike,limit=1,sort=nearest,tag=!obl.modified] add obl.modified