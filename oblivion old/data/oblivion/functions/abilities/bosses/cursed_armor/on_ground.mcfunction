tag @s remove obl.check_for_ground
data merge entity @s {Invulnerable:0b}
tag @s remove obl.invulnerable
particle block dirt ~ ~.3 ~ 2.2 0 2.2 0 100 force
playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.6
playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=obl.cursed_armor.first_half] as @a[distance=..5] run damage @s 12 minecraft:explosion by @e[type=minecraft:wither_skeleton,limit=1,sort=nearest,tag=obl.boss.cursed_armor]
execute if entity @s[tag=!obl.cursed_armor.first_half] as @a[distance=..5] run damage @s 20 minecraft:explosion by @e[type=minecraft:wither_skeleton,limit=1,sort=nearest,tag=obl.boss.cursed_armor]
execute anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=obl.target] eyes
execute as @a[distance=..5] run function oblivion:abilities/mobs/knockup

execute if entity @s[tag=!obl.cursed_armor.first_half,tag=!obl.cursed_armor.second_half,tag=!obl.phase.2,tag=!obl.phase.3] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=!obl.cursed_armor.first_half,tag=!obl.cursed_armor.second_half,tag=!obl.phase.2,tag=!obl.phase.3] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~ 0
execute if entity @s[tag=!obl.cursed_armor.first_half,tag=!obl.cursed_armor.second_half,tag=!obl.phase.2,tag=!obl.phase.3] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified

execute if entity @s[tag=obl.cursed_armor.first_half] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.cursed_armor.first_half] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~10 0
execute if entity @s[tag=obl.cursed_armor.first_half] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.cursed_armor.first_half] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.cursed_armor.first_half] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~-10 0
execute if entity @s[tag=obl.cursed_armor.first_half] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified

execute if entity @s[tag=obl.cursed_armor.second_half] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.cursed_armor.second_half] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~ 0
execute if entity @s[tag=obl.cursed_armor.second_half] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.cursed_armor.second_half] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.cursed_armor.second_half] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~20 0
execute if entity @s[tag=obl.cursed_armor.second_half] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.cursed_armor.second_half] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.cursed_armor.second_half] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~-20 0
execute if entity @s[tag=obl.cursed_armor.second_half] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified

execute if entity @s[tag=obl.disable_abilities] run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 2 0.5
execute if entity @s[tag=obl.disable_abilities] run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 2 0.65
execute if entity @s[tag=obl.disable_abilities] run playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 2 0.8
execute if entity @s[tag=obl.disable_abilities] run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
execute if entity @s[tag=obl.disable_abilities] run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~ 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~15 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~-15 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~30 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~-30 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~60 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~90 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~120 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~150 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~180 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~210 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~240 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~270 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~300 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified
execute if entity @s[tag=obl.disable_abilities] run summon minecraft:marker ~ ~.3 ~ {Tags:["obl.unparryable","obl.projectile","obl.projectile.cursed_ground"]}
execute if entity @s[tag=obl.disable_abilities] rotated as @s run tp @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] ~ ~ ~ ~330 0
execute if entity @s[tag=obl.disable_abilities] as @e[type=marker,tag=obl.projectile.cursed_ground,distance=..3,tag=!obl.modified] run tag @s add obl.modified

tag @a remove obl.target
tag @s remove obl.disable_abilities