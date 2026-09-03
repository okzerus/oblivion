tellraw @a {"text":"Лучи солнца вынудили Проклятые доспехи испариться..","color":"dark_gray"}
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

execute as @a[tag=obl.in_battle.cursed_armor] run function oblivion:music/end
execute as @a[tag=obl.in_battle.cursed_armor] run function oblivion:abilities/bosses/cursed_armor/statistics/battle_end.failure

bossbar remove oblivion:boss_health

tag @a remove obl.in_battle.cursed_armor
tag @a remove obl.in_battle.not_solo
tag @a remove obl.in_battle.boss
tag @a remove obl.in_battle.no_hit