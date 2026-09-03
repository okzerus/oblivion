tellraw @a {"text":"Проклятые доспехи были побеждены!","italic":true,"color":"dark_gray"}
advancement grant @a[tag=obl.in_battle.cursed_armor] only oblivion:advancements/mobs/cursedarmor
execute as @a[tag=obl.in_battle.cursed_armor,scores={obl.difficulty=1}] at @s run function oblivion:tech/difficulty/levelup/2
xp add @a[tag=obl.in_battle.cursed_armor] 1000 points
tag @a[tag=obl.in_battle.cursed_armor] add obl.beaten.cursed_armor
execute as @a[tag=obl.in_battle.cursed_armor,tag=obl.in_battle.not_solo] run function oblivion:abilities/bosses/cursed_armor/statistics/battle_end.victory
execute unless entity @a[tag=obl.in_battle.not_solo] as @a[tag=obl.in_battle.cursed_armor,tag=!obl.in_battle.not_solo,limit=1] at @s run function oblivion:abilities/bosses/cursed_armor/statistics/battle_end.victory.solo

playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
playsound minecraft:item.totem.use hostile @a ~ ~ ~ 3 0.5
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 0.5
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 0.6
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 0.7
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 0.8
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 0.9
playsound minecraft:block.end_portal.spawn hostile @a ~ ~ ~ 3 1
function oblivion:abilities/bosses/cursed_armor/disappear/death.shockwave
effect give @a[tag=obl.in_battle.cursed_armor] minecraft:night_vision 1 0 true
title @a[tag=obl.in_battle.cursed_armor] subtitle ""

scoreboard players set cursed_armor_alive oblivion 0
scoreboard players set obl.isbossactive oblivion 0
scoreboard players set obl.disable_fake_bossbar oblivion 0

bossbar remove oblivion:boss_health
tag @a remove obl.in_battle.cursed_armor
tag @a remove obl.in_battle.not_solo
tag @a remove obl.in_battle.boss
tag @a remove obl.in_battle.no_hit
tag @a remove obl.can_skip_transition

execute as @e[tag=obl.cursed_armor.part] run tp @s ~ -256 ~
execute as @e[tag=obl.cursed_armor.part] run kill @s
execute as @e[tag=obl.cursed_armor.minion] run tp @s ~ -256 ~
execute as @e[tag=obl.cursed_armor.minion] run kill @s
execute as @e[tag=obl.cursed_armor.spirit] run kill @s
kill @e[type=marker,tag=obl.teleport.center]
kill @e[type=marker,tag=obl.teleport.edge]
kill @e[type=marker,tag=obl.cursed_shield]
kill @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing]