tag @s remove obl.performing_dash
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.2
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.3
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.4
schedule clear oblivion:abilities/bosses/cursed_armor/transitions/second_half.5
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.2
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.3
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.4
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.2
schedule clear oblivion:abilities/bosses/cursed_armor/dashing/up_down.3
tag @e remove obl.boss.cursed_armor
tag @s remove obl.ignore_reflects
tag @s remove obl.phase.3
tag @s add obl.boss.cursed_armor
tag @s add obl.phase.4
tag @s add obl.prevent_line
tag @a remove obl.target
kill @e[type=marker,tag=obl.beam_shooter.cursed]
execute if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_4/story.1
execute unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/transitions/phase_4/repeat.1
execute if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_disabled
execute if entity @s[tag=obl.stunned] run function oblivion:tech/stun_disabled
execute if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/remove
scoreboard players set obl.disable_fake_bossbar oblivion 0
scoreboard players set obl.max_damage oblivion 10
playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 3 0.1
data merge entity @s {Invulnerable:0b,Glowing:1b}
tag @s remove obl.invulnerable
execute positioned ~-7 ~ ~ if block ~ ~ ~ #oblivion:non_solid run summon marker ~ ~ ~ {Tags:["obl.teleport.edge"]}
execute positioned ~7 ~ ~ if block ~ ~ ~ #oblivion:non_solid run summon marker ~ ~ ~ {Tags:["obl.teleport.edge"]}
execute positioned ~ ~ ~7 if block ~ ~ ~ #oblivion:non_solid run summon marker ~ ~ ~ {Tags:["obl.teleport.edge"]}
execute positioned ~ ~ ~-7 if block ~ ~ ~ #oblivion:non_solid run summon marker ~ ~ ~ {Tags:["obl.teleport.edge"]}
tag @e[type=marker,sort=random,limit=1,tag=obl.teleport.edge,tag=!obl.for_spirit_teleport] add obl.for_spirit_teleport
function oblivion:abilities/bosses/cursed_armor/armor_parts/soul_teleport_when_hurt

scoreboard players set @s obl.fake_health 100

bossbar remove oblivion:boss_health
bossbar add oblivion:boss_health "Проклятые доспехи"
execute if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  ???  < 💀 >","color":"white"}]
execute unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run bossbar set oblivion:boss_health name [{"text":"< 💀 >  Проклятый Дух  < 💀 >","color":"white"}]
bossbar set oblivion:boss_health max 100
bossbar set oblivion:boss_health value 100
bossbar set oblivion:boss_health visible true
bossbar set oblivion:boss_health color white
bossbar set oblivion:boss_health style notched_12
bossbar set oblivion:boss_health players @a[tag=obl.in_battle.cursed_armor]