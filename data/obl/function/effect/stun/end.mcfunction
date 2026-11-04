tag @s remove obl.effect.stun

title @s clear

attribute @s minecraft:jump_strength modifier remove obl:stun
attribute @s minecraft:attack_damage modifier remove obl:stun
attribute @s minecraft:attack_speed modifier remove obl:stun
attribute @s minecraft:movement_speed modifier remove obl:stun
attribute @s minecraft:block_interaction_range modifier remove obl:stun


scoreboard players reset @s obl.effect.stun.tick
scoreboard players reset @s obl.effect.stun.max