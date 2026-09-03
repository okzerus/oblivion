tag @s add obl.weapon.fanged_assassin.fox_dance.blinker
scoreboard players set @s obl.weapon.fanged_assassin.fox_dance.ray 0
scoreboard players set @s obl.weapon.fanged_assassin.fox_dance.cd 20

# Рейкаст, кастим рей
execute anchored eyes positioned ^ ^ ^ run function obl:item/weapon/fanged_assassin/ability/fox_dance/ray

# Сообщение о промахе
execute unless entity @s[tag=obl.weapon.fanged_assassin.fox_dance.blink_done] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6


tag @e[distance=..16,tag=obl.weapon.fanged_assassin.fox_dance.blink_target] remove obl.weapon.fanged_assassin.fox_dance.blink_target
tag @s remove obl.weapon.fanged_assassin.fox_dance.blinker
tag @s remove obl.weapon.fanged_assassin.fox_dance.blink_done