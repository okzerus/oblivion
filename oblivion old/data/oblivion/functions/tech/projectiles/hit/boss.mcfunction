execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.1] run scoreboard players remove @s obl.fake_health 17
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.1,tag=!obl.brokenarmor] run scoreboard players remove @s obl.fake_health 25
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.1,tag=!obl.stunned] anchored eyes run function oblivion:tech/stun_enabled
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.2] run scoreboard players remove @s obl.fake_health 13
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.2,tag=!obl.brokenarmor] run scoreboard players remove @s obl.fake_health 19
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.2,tag=!obl.enraged] anchored eyes run function oblivion:tech/mob_rage_enabled
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.4] run scoreboard players remove @s obl.fake_health 6
execute if entity @s[tag=obl.boss.cursed_armor,tag=obl.phase.4] run function oblivion:abilities/bosses/cursed_armor/armor_parts/soul_teleport_when_hurt


execute store result bossbar oblivion:boss_health value run scoreboard players get @s obl.fake_health