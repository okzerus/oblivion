particle dust 0.7 1 0.7 1.2 ~ ~3.6 ~ 0 0 0 0 1 normal
scoreboard players add @s obl.cd.cursed_soul 1

execute if score @s obl.cd.cursed_soul matches 100 unless entity @e[type=#oblivion:agroandplayer,tag=obl.accs.cursed_soul.target,distance=..20] on attacker if entity @s[type=player] run tag @s add obl.temp.attacker
execute if score @s obl.cd.cursed_soul matches 100 unless entity @e[type=#oblivion:agroandplayer,tag=obl.accs.cursed_soul.target,distance=..20] as @e[type=player,distance=5..20,limit=1,sort=nearest,tag=obl.temp.attacker] run tag @s add obl.accs.cursed_soul.target
execute if score @s obl.cd.cursed_soul matches 100 unless entity @e[type=#oblivion:agroandplayer,tag=obl.accs.cursed_soul.target,distance=..20] as @e[type=#oblivion:hostile.flying,distance=5..20,limit=1,sort=nearest,tag=!obl.invulnerable] run tag @s add obl.accs.cursed_soul.target
execute if score @s obl.cd.cursed_soul matches 100 unless entity @e[type=#oblivion:agroandplayer,tag=obl.accs.cursed_soul.target,distance=..20] as @e[type=#oblivion:agro,distance=5..20,limit=1,sort=nearest,tag=!obl.invulnerable] run tag @s add obl.accs.cursed_soul.target

execute if score @s obl.cd.cursed_soul matches 100 positioned ~ ~2.25 ~ if entity @e[type=#oblivion:agroandplayer,tag=obl.accs.cursed_soul.target,distance=..20] as @s run function oblivion:tech/projectiles/shoot/cursed.acc
execute if score @s obl.cd.cursed_soul matches 100 run tag @e[type=#oblivion:agroandplayer] remove obl.accs.cursed_soul.target
execute if score @s obl.cd.cursed_soul matches 100 run tag @a remove obl.temp.attacker

execute if score @s obl.cd.cursed_soul matches 100.. run scoreboard players set @s obl.cd.cursed_soul 0