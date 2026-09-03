execute as @e[type=vex,tag=obl.boss.cursed_armor] at @s run particle minecraft:sneeze ~ ~ ~ 0 0 0 0.3 100
execute as @e[type=vex,tag=obl.boss.cursed_armor] at @s run particle minecraft:dust 0.3 1 0.3 2 ~ ~ ~ 3 3 3 0 100
execute as @e[type=vex,tag=obl.boss.cursed_armor] at @s run particle minecraft:dust 0.3 1 0.3 1 ~ ~ ~ 3 3 3 0 100
execute as @e[type=vex,tag=obl.boss.cursed_armor] at @s run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 1.2
execute as @e[type=vex,tag=obl.boss.cursed_armor] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.7

execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run particle block dirt ~ ~.3 ~ 2.2 0 2.2 0 100 force
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 3 0.7
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 3 0.6
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 3 0.5
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 3 0.5
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @a[distance=..5] run damage @s 15 minecraft:explosion by @e[type=minecraft:vex,limit=1,sort=nearest,tag=obl.boss.cursed_armor]
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @a[distance=..5] run function oblivion:abilities/mobs/knockup

execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~0 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~60 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~120 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~180 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~240 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s facing entity @p[tag=!obl.death_boss.cd] eyes run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~300 0
execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] at @s as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified

execute as @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing] run kill @s