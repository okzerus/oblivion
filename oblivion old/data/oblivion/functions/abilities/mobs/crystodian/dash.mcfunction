execute anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~ 0 positioned ^ ^.5 ^1 summon marker run function oblivion:abilities/mobs/dash.as_marker
data modify entity @s Motion set from storage oblivion:temp vector
scoreboard players set @s obl.mob.ability_cd 300
scoreboard players set @s obl.crystodian.dashing 0
playsound minecraft:entity.skeleton.shoot hostile @a ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.place hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.place hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 0.7 0.8
particle block amethyst_block ~ ~ ~ 0.15 0 0.15 1 20
tag @s add obl.crystodian.mid_air