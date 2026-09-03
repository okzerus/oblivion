tag @s remove obl.yamato.preparing_ability
tag @s add obl.yamato.performing_ability
title @s clear
scoreboard players set @s obl.yamato.time.ability 0
scoreboard players set @s obl.yamato.cutting.ability 0
particle flash ~ ~ ~
playsound minecraft:entity.shulker_bullet.hit hostile @a ~ ~ ~ 1 2
effect clear @s darkness
effect clear @s resistance