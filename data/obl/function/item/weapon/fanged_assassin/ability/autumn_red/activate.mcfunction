###   U N ' E S P L O S I O N E   D I   R O S S O   A U T U N N A L E
tag @s add obl.weapon.fanged_assassin.fox_dance.autumn_red.activate
tag @s add obl.weapon.fanged_assassin.fox_dance.autumn_red
title @s times 0 50 0
title @s title {"text":""}
title @s subtitle {"text":"разве что в порыве осенней красноты.","italic":true,"color":"#fc3223"}

playsound entity.ender_dragon.growl master @a[distance=..24] ~ ~ ~ 1 1.2
particle dust{color:[0.99,0.13,0.01],scale:3} ~ ~1 ~ 3 2 3 0 200 normal
particle dust{color:[0.95,0.42,0.07],scale:3} ~ ~1 ~ 3 2 3 0 200 normal
particle end_rod ~ ~1 ~ 0 0 0 2 150 normal

playsound oblivion:misc.fanged_assassin.mono.autumn_red.start.2 master @a[distance=..16,tag=!obl.weapon.fanged_assassin.fox_dance.autumn_red.activate] ~ ~ ~ 3 1
playsound oblivion:misc.fanged_assassin.mono.autumn_red.start.2 master @s ~ ~10000 ~ 100000 1 1

scoreboard players set @s obl.weapon.fanged_assassin.autumn_red 600
effect give @s speed 30 1
attribute @s attack_speed modifier add obl.empower.autumn_red 4 add_value


###
tag @s remove obl.weapon.fanged_assassin.fox_dance.autumn_red.activate
effect clear @s[tag=obl.custom_darkness] darkness 
effect clear @s[tag=obl.custom_slowness] slowness 