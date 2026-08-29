###   C U R S E D   A R M O R
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.1] run scoreboard players remove @s obl.fake_health 15
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.1,tag=obl.brokenarmor] run scoreboard players remove @s obl.fake_health 25
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.2] run scoreboard players remove @s obl.fake_health 7
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.2,tag=obl.brokenarmor] run scoreboard players remove @s obl.fake_health 15
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.4] run scoreboard players remove @s obl.fake_health 5
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.4,tag=obl.brokenarmor] run scoreboard players remove @s obl.fake_health 10
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.4] run function obl:abilities/bosses/cursed_armor/armor_parts/soul_teleport_when_hurt