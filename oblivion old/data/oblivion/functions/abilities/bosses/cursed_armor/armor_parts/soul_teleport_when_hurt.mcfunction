playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.3 0.5
playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1.3 0.5
particle minecraft:flash ~ ~ ~
data merge entity @s {Glowing:0b,Invulnerable:1b}
tag @s add obl.invulnerable
tag @s add obl.true_invisibility
execute unless entity @s[tag=obl.prevent_line] if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_4/story.1
execute unless entity @s[tag=obl.prevent_line] unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_4/repeat.1

execute at @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] run tag @e[type=marker,sort=random,limit=1,tag=obl.teleport.edge,distance=1..] add obl.for_spirit_teleport
execute at @e[type=marker,tag=obl.for_spirit_teleport] run tp @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest] ~ ~ ~
execute unless entity @e[type=marker,tag=obl.for_spirit_teleport] positioned as @e[type=marker,limit=1,tag=obl.teleport.center] run spreadplayers ~ ~ 1 10 false @e[type=vex,tag=obl.cursed_armor.spirit,limit=1,sort=nearest]
tag @e[type=marker,tag=obl.teleport.edge] remove obl.for_spirit_teleport

schedule function oblivion:abilities/bosses/cursed_armor/armor_parts/soul_teleport_when_hurt_2 10t
tag @s remove obl.prevent_line