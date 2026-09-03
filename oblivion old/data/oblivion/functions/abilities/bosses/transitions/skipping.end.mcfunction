tag @s remove obl.can_skip_transition

# So what's the boss we're skipping m8?
execute if entity @e[type=marker,tag=obl.summoning.cursed_armor,sort=nearest,limit=1,distance=..50] unless entity @s[tag=obl.music_playing.cursed_armor] at @s run function oblivion:music/playing/start/cursed_armor
execute if entity @e[type=marker,tag=obl.summoning.cursed_armor,sort=nearest,limit=1,distance=..50] run tag @s add obl.boss_intro
execute if entity @e[type=marker,tag=obl.summoning.cursed_armor,sort=nearest,limit=1,distance=..50] run tag @s add obl.intro.cursed_armor
execute as @e[type=marker,tag=obl.summoning.cursed_armor,sort=nearest,limit=1,distance=..50] at @s positioned ~ ~2 ~ run function oblivion:abilities/bosses/cursed_armor/spawn
execute as @e[type=vex,tag=obl.boss.cursed_armor,tag=obl.disable_abilities,sort=nearest,limit=1,distance=..50] at @s run function oblivion:abilities/bosses/cursed_armor/disappear/death