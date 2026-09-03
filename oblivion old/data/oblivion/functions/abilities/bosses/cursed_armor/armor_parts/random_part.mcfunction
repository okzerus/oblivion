###   S E L E C T   R A N D O M   A R M O R   P A R T
execute unless entity @e[type=wither_skeleton,tag=obl.cursed_sword,tag=obl.cursed_armor.chosen] if entity @s[tag=obl.first_appearance,tag=!obl.prevent_line] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_3/story.1
execute unless entity @e[type=wither_skeleton,tag=obl.cursed_sword,tag=obl.cursed_armor.chosen] if entity @s[tag=!obl.first_appearance,tag=!obl.prevent_line] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_3/repeat.1
tag @s remove obl.prevent_line
tag @e[type=wither_skeleton,tag=obl.cursed_armor.part,tag=!obl.cursed_sword,limit=1,sort=random] add obl.cursed_armor.chosen
data merge entity @e[type=wither_skeleton,tag=obl.cursed_armor.chosen,limit=1] {Invulnerable:0b}
tag @e[type=wither_skeleton,tag=obl.cursed_armor.chosen,limit=1] remove obl.invulnerable

###   S E L E C T   T H E   M A I N   S W O R D   P A R T   I F   N O   A R M O R   P A R T S   D E T E C T E D
execute unless entity @e[type=wither_skeleton,tag=obl.cursed_helmet] unless entity @e[type=wither_skeleton,tag=obl.cursed_chestplate] unless entity @e[type=wither_skeleton,tag=obl.cursed_leggings] unless entity @e[type=wither_skeleton,tag=obl.cursed_boots] run tag @e[type=wither_skeleton,tag=obl.cursed_sword,limit=1] add obl.cursed_armor.chosen
data merge entity @e[type=wither_skeleton,tag=obl.cursed_sword,tag=obl.cursed_armor.chosen,limit=1] {Invulnerable:0b}
tag @e[type=wither_skeleton,tag=obl.cursed_sword,tag=obl.cursed_armor.chosen,limit=1] remove obl.invulnerable

###   R E M O V E   1   P A R T   O F   T H E   B O S S B A R
scoreboard players remove obl.cursed_part.count oblivion 1
execute store result bossbar oblivion:boss_health value run scoreboard players get obl.cursed_part.count oblivion