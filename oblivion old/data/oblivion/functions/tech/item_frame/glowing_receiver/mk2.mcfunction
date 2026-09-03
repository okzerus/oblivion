scoreboard players set @s obl.item_frame.cd 10
tag @s add obl.item_frame.cooldown
tag @s add obl.item_frame.executed

tag @s add obl.temp.ticked
execute as @e[type=item,distance=.1..700,tag=obl.glow_berried] at @s run function oblivion:tech/item_frame/glowing_receiver/teleport.item
execute as @e[type=#oblivion:can_be_teleported,distance=.1..700,tag=obl.glow_berried] at @s run function oblivion:tech/item_frame/glowing_receiver/teleport.mob
execute as @a[distance=.1..700,tag=obl.glow_berried] at @s run function oblivion:tech/item_frame/glowing_receiver/teleport.player.check
tag @s remove obl.temp.ticked