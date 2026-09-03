tag @s add obl.performing_dash

execute anchored eyes run tag @p add obl.facing_point
execute anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=obl.facing_point] eyes
particle block dirt ~ ~.3 ~ 0.7 0 0.7 0 30
data merge entity @s {Invulnerable:1b}
tag @s add obl.invulnerable
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 3 1.8
playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 3 1.3
execute anchored feet facing entity @p eyes positioned 0. 0. 0. rotated ~ 0 positioned ~ ~1.6 ~ summon marker run function oblivion:abilities/mobs/dash.as_marker
data modify entity @s Motion set from storage oblivion:temp vector

schedule function oblivion:abilities/bosses/cursed_armor/dashing/up_down.2 10t