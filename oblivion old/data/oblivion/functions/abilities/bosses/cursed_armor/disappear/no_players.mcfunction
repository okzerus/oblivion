tellraw @a {"text":"Все игроки умерли/покинули бой с Проклятыми доспехами.","color":"dark_gray"}
loot spawn ~ ~ ~ loot oblivion:items/events/boss_possessed_scrap
tag @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:raw_iron"}}] add obl.boss_failure
tag @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:raw_iron"}}] add obl.dont_check

scoreboard players set cursed_armor_alive oblivion 0
scoreboard players set obl.isbossactive oblivion 0
scoreboard players set obl.disable_fake_bossbar oblivion 0

execute as @e[tag=obl.cursed_armor.part] run tp @s ~ -256 ~
execute as @e[tag=obl.cursed_armor.part] run kill @s
execute as @e[tag=obl.cursed_armor.minion] run tp @s ~ -256 ~
execute as @e[tag=obl.cursed_armor.minion] run kill @s
execute as @e[tag=obl.boss.cursed_armor] run tp @s ~ -256 ~
execute as @e[tag=obl.boss.cursed_armor] run kill @s
kill @e[type=marker,tag=obl.teleport.center]
kill @e[type=marker,tag=obl.teleport.edge]
kill @e[type=marker,tag=obl.cursed_shield]
kill @e[type=armor_stand,tag=obl.cursed_armor.p4a2.preparing]


bossbar remove oblivion:boss_health

tag @a remove obl.in_battle.cursed_armor
tag @a remove obl.in_battle.not_solo
tag @a remove obl.in_battle.boss
tag @a remove obl.in_battle.no_hit

execute as @a[tag=obl.death_boss.cd] run function oblivion:tech/player_death_cooldown_end